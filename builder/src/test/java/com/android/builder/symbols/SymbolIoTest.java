/*
 * Copyright (C) 2016 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.android.builder.symbols;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import com.android.annotations.NonNull;
import com.google.common.base.Charsets;
import com.google.common.base.Joiner;
import com.google.common.io.Files;
import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;
import org.junit.Rule;
import org.junit.Test;
import org.junit.rules.TemporaryFolder;

public class SymbolIoTest {

    @Rule
    public TemporaryFolder mTemporaryFolder = new TemporaryFolder();

    @Test
    public void testSingleInt() throws Exception {
        String r = "" +
                "int xml authenticator 0x7f040000\n";
        File file = mTemporaryFolder.newFile();
        Files.write(r, file, Charsets.UTF_8);

        SymbolTable table = SymbolIo.read(file);

        SymbolTable expected =
                SymbolTable.builder()
                        .add(new Symbol("xml", "authenticator", "int", "0x7f040000"))
                        .build();
        assertEquals(table, expected);
    }

    @Test
    public void testStyleables() throws Exception {
        String r = "" +
                "int[] styleable LimitedSizeLinearLayout { 0x7f010000, 0x7f010001 }\n" +
                "int styleable LimitedSizeLinearLayout_max_height 1\n" +
                "int styleable LimitedSizeLinearLayout_max_width 0\n" +
                "int xml authenticator 0x7f040000\n";
        File file = mTemporaryFolder.newFile();
        Files.write(r, file, Charsets.UTF_8);

        SymbolTable table = SymbolIo.read(file);

        SymbolTable expected =
                SymbolTable.builder()
                        .add(
                                new Symbol(
                                        "styleable",
                                        "LimitedSizeLinearLayout",
                                        "int[]",
                                        "{ 0x7f010000, 0x7f010001 }"))
                        .add(
                                new Symbol(
                                        "styleable",
                                        "LimitedSizeLinearLayout_max_height",
                                        "int",
                                        "1"))
                        .add(
                                new Symbol(
                                        "styleable",
                                        "LimitedSizeLinearLayout_max_width",
                                        "int",
                                        "0"))
                        .add(new Symbol("xml", "authenticator", "int", "0x7f040000"))
                .build();
        assertEquals(table, expected);
    }

    @Test
    public void writeReadSymbolFile() throws Exception {
        SymbolTable original =
                SymbolTable.builder()
                        .add(new Symbol("a", "b", "c", "d"))
                        .add(new Symbol("e", "f", "g", "h"))
                        .build();

        File f = mTemporaryFolder.newFile();

        SymbolIo.write(original, f);
        SymbolTable copy = SymbolIo.read(f);

        assertEquals(original, copy);
    }

    private void checkRGeneration(
            @NonNull String expected,
            @NonNull Path path,
            @NonNull SymbolTable table,
            boolean finalIds)
            throws Exception {
        File directory = mTemporaryFolder.newFolder();

        SymbolIo.exportToJava(table, directory, finalIds);
        File result = directory.toPath().resolve(path).toFile();
        assertTrue(result.isFile());

        String contents = Joiner.on(" ").join(Files.readLines(result, Charsets.US_ASCII));

        String expectedNormalized = expected.replaceAll("\\s+", " ");
        String contentsNormalized = contents.replaceAll("\\s+", " ");

        assertEquals(expectedNormalized, contentsNormalized);
    }

    @Test
    public void rGenerationTest1() throws Exception {
        SymbolTable table =
                SymbolTable.builder()
                        .tablePackage("test.pkg")
                        .add(new Symbol("xml", "authenticator", "int", "0x7f040000"))
                        .build();

        checkRGeneration(
                "/* AUTO-GENERATED FILE. DO NOT MODIFY." +
                        " * " +
                        " * This class was automatically generated by the" +
                        " * gradle plugin from the resource data it found. It" +
                        " * should not be modified by hand." +
                        " */" +
                        " " +
                        "package test.pkg;" +
                        " " +
                        "public final class R {" +
                        "    public static final class xml {" +
                        "        public static final int authenticator = 0x7f040000;" +
                        "    }" +
                        " " +
                        "}",
                Paths.get("test", "pkg", "R.java"),
                table,
                true);
    }

    @Test
    public void rGenerationTest2() throws Exception {
        SymbolTable table =
                SymbolTable.builder()
                        .tableName("Roar")
                        .tablePackage("test.pkg")
                        .add(new Symbol("string", "app_name", "int", "0x7f030000"))
                        .add(new Symbol("string", "lib1", "int", "0x7f030001"))
                        .add(new Symbol("style", "AppBaseTheme", "int", "0x7f040000"))
                        .add(new Symbol("style", "AppTheme", "int", "0x7f040001"))
                        .add(new Symbol("drawable", "foobar", "int", "0x7f020000"))
                        .add(new Symbol("drawable", "ic_launcher", "int", "0x7f020001"))
                        .build();

        checkRGeneration(
                "/* AUTO-GENERATED FILE. DO NOT MODIFY." +
                        " *" +
                        " * This class was automatically generated by the" +
                        " * gradle plugin from the resource data it found. It" +
                        " * should not be modified by hand." +
                        " */" +
                        " " +
                        "package test.pkg;" +
                        " " +
                        "public final class Roar {" +
                        "    public static final class drawable {" +
                        "        public static final int foobar = 0x7f020000;" +
                        "        public static final int ic_launcher = 0x7f020001;" +
                        "    }" +
                        "    public static final class string {" +
                        "        public static final int app_name = 0x7f030000;" +
                        "        public static final int lib1 = 0x7f030001;" +
                        "    }" +
                        "    public static final class style {" +
                        "        public static final int AppBaseTheme = 0x7f040000;" +
                        "        public static final int AppTheme = 0x7f040001;" +
                        "    }" +
                        " " +
                        "}",
                Paths.get("test", "pkg", "Roar.java"),
                table,
                true);
    }

    @Test
    public void rGenerationTestNonFinalIds() throws Exception {
        SymbolTable table =
                SymbolTable.builder()
                        .tablePackage("test.pkg")
                        .add(new Symbol("string", "app_name", "int", "0x7f030000"))
                        .add(new Symbol("string", "lib1", "int", "0x7f030001"))
                        .add(new Symbol("style", "AppBaseTheme", "int", "0x7f040000"))
                        .add(new Symbol("style", "AppTheme", "int", "0x7f040001"))
                        .add(new Symbol("drawable", "foobar", "int", "0x7f020000"))
                        .add(new Symbol("drawable", "ic_launcher", "int", "0x7f020001"))
                        .build();

        checkRGeneration(
                "/* AUTO-GENERATED FILE. DO NOT MODIFY." +
                        " *" +
                        " * This class was automatically generated by the" +
                        " * gradle plugin from the resource data it found. It" +
                        " * should not be modified by hand." +
                        " */" +
                        " " +
                        "package test.pkg;" +
                        " " +
                        "public final class R {" +
                        "    public static final class drawable {" +
                        "        public static int foobar = 0x7f020000;" +
                        "        public static int ic_launcher = 0x7f020001;" +
                        "    }" +
                        "    public static final class string {" +
                        "        public static int app_name = 0x7f030000;" +
                        "        public static int lib1 = 0x7f030001;" +
                        "    }" +
                        "    public static final class style {" +
                        "        public static int AppBaseTheme = 0x7f040000;" +
                        "        public static int AppTheme = 0x7f040001;" +
                        "    }" +
                        " " +
                        "}",
                Paths.get("test", "pkg", "R.java"),
                table,
                false);
    }

    @Test
    public void rGenerationTestStyleablesInDefaultPackage() throws Exception {
        SymbolTable table =
                SymbolTable.builder()
                        .add(
                                new Symbol(
                                        "styleable",
                                        "TiledView",
                                        "int[]",
                                        "{ 0x7f010000, 0x7f010001, 0x7f010002, "
                                                + "0x7f010003, 0x7f010004 }"))
                        .add(new Symbol("styleable", "TiledView_tileName", "int", "2"))
                        .add(new Symbol("styleable", "TiledView_tilingEnum", "int", "4"))
                        .add(new Symbol("styleable", "TiledView_tilingMode", "int", "3"))
                        .add(new Symbol("styleable", "TiledView_tilingProperty", "int", "0"))
                        .add(new Symbol("styleable", "TiledView_tilingResource", "int", "1"))
                        .build();

        checkRGeneration(
                "/* AUTO-GENERATED FILE. DO NOT MODIFY." +
                        " *" +
                        " * This class was automatically generated by the" +
                        " * gradle plugin from the resource data it found. It" +
                        " * should not be modified by hand." +
                        " */" +
                        " " +
                        "public final class R {" +
                        "    public static final class styleable {" +
                        "        public static final int[] TiledView = " +
                        "{ 0x7f010000, 0x7f010001, 0x7f010002, 0x7f010003, 0x7f010004 };" +
                        "        public static final int TiledView_tileName = 2;" +
                        "        public static final int TiledView_tilingEnum = 4;" +
                        "        public static final int TiledView_tilingMode = 3;" +
                        "        public static final int TiledView_tilingProperty = 0;" +
                        "        public static final int TiledView_tilingResource = 1;" +
                        "    }" +
                        " " +
                        "}",
                Paths.get("R.java"),
                table,
                true);
    }

    @Test
    public void testStyleables2() throws Exception {
        SymbolTable table =
                SymbolTable.builder()
                        .tablePackage("test.pkg")
                        .add(
                                new Symbol(
                                        "styleable",
                                        "LimitedSizeLinearLayout",
                                        "int[]",
                                        "{ 0x7f010000, 0x7f010001 }"))
                        .add(
                                new Symbol(
                                        "styleable",
                                        "LimitedSizeLinearLayout_max_height",
                                        "int",
                                        "1"))
                        .add(
                                new Symbol(
                                        "styleable",
                                        "LimitedSizeLinearLayout_max_width",
                                        "int",
                                        "0"))
                        .add(new Symbol("xml", "authenticator", "int", "0x7f040000"))
                        .build();

        checkRGeneration(
                "/* AUTO-GENERATED FILE. DO NOT MODIFY." +
                        " *" +
                        " * This class was automatically generated by the" +
                        " * gradle plugin from the resource data it found.  It" +
                        " * should not be modified by hand." +
                        " */" +
                        " "  +
                        "package test.pkg;" +
                        " "  +
                        "public final class R {" +
                        "    public static final class styleable {" +
                        "        public static final int[] LimitedSizeLinearLayout = " +
                        "{ 0x7f010000, 0x7f010001 };" +
                        "        public static final int LimitedSizeLinearLayout_max_height = 1;" +
                        "        public static final int LimitedSizeLinearLayout_max_width = 0;" +
                        "    }" +
                        "    public static final class xml {" +
                        "        public static final int authenticator = 0x7f040000;" +
                        "    }" +
                        " " +
                        "}",
                Paths.get("test", "pkg", "R.java"),
                table,
                true);
    }
}
