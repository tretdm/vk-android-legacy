.class public Lcom/vkontakte/android/EmojiView;
.super Landroid/widget/LinearLayout;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/EmojiView$EmojiGridAdapter;,
        Lcom/vkontakte/android/EmojiView$EmojiPagesAdapter;,
        Lcom/vkontakte/android/EmojiView$Listener;
    }
.end annotation


# static fields
.field public static data:[[J


# instance fields
.field private adapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/EmojiView$EmojiGridAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private icons:[I

.field private listener:Lcom/vkontakte/android/EmojiView$Listener;

.field private pager:Landroid/support/v4/view/ViewPager;

.field private recentsWrap:Landroid/widget/FrameLayout;

.field private tabs:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

.field private views:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/GridView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 29
    const/4 v0, 0x6

    new-array v0, v0, [[J

    new-array v1, v2, [J

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 30
    const/16 v2, 0xbd

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    .line 56
    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 57
    const/16 v2, 0x74

    new-array v2, v2, [J

    fill-array-data v2, :array_1

    .line 73
    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 74
    const/16 v2, 0xe5

    new-array v2, v2, [J

    fill-array-data v2, :array_2

    .line 106
    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 107
    const/16 v2, 0x65

    new-array v2, v2, [J

    fill-array-data v2, :array_3

    .line 121
    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 122
    const/16 v2, 0xcc

    new-array v2, v2, [J

    fill-array-data v2, :array_4

    .line 150
    aput-object v2, v0, v1

    .line 29
    sput-object v0, Lcom/vkontakte/android/EmojiView;->data:[[J

    .line 150
    return-void

    .line 30
    nop

    :array_0
    .array-data 8
        0xd83dde04L
        0xd83dde03L
        0xd83dde00L
        0xd83dde0aL
        0x263a
        0xd83dde09L
        0xd83dde0dL
        0xd83dde18L
        0xd83dde1aL
        0xd83dde17L
        0xd83dde19L
        0xd83dde1cL
        0xd83dde1dL
        0xd83dde1bL
        0xd83dde33L
        0xd83dde01L
        0xd83dde14L
        0xd83dde0cL
        0xd83dde12L
        0xd83dde1eL
        0xd83dde23L
        0xd83dde22L
        0xd83dde02L
        0xd83dde2dL
        0xd83dde2aL
        0xd83dde25L
        0xd83dde30L
        0xd83dde05L
        0xd83dde13L
        0xd83dde29L
        0xd83dde2bL
        0xd83dde28L
        0xd83dde31L
        0xd83dde20L
        0xd83dde21L
        0xd83dde24L
        0xd83dde16L
        0xd83dde06L
        0xd83dde0bL
        0xd83dde37L
        0xd83dde0eL
        0xd83dde34L
        0xd83dde35L
        0xd83dde32L
        0xd83dde1fL
        0xd83dde26L
        0xd83dde27L
        0xd83dde08L
        0xd83ddc7fL
        0xd83dde2eL
        0xd83dde2cL
        0xd83dde10L
        0xd83dde15L
        0xd83dde2fL
        0xd83dde36L
        0xd83dde07L
        0xd83dde0fL
        0xd83dde11L
        0xd83ddc72L
        0xd83ddc73L
        0xd83ddc6eL
        0xd83ddc77L
        0xd83ddc82L
        0xd83ddc76L
        0xd83ddc66L
        0xd83ddc67L
        0xd83ddc68L
        0xd83ddc69L
        0xd83ddc74L
        0xd83ddc75L
        0xd83ddc71L
        0xd83ddc7cL
        0xd83ddc78L
        0xd83dde3aL
        0xd83dde38L
        0xd83dde3bL
        0xd83dde3dL
        0xd83dde3cL
        0xd83dde40L
        0xd83dde3fL
        0xd83dde39L
        0xd83dde3eL
        0xd83ddc79L
        0xd83ddc7aL
        0xd83dde48L
        0xd83dde49L
        0xd83dde4aL
        0xd83ddc80L
        0xd83ddc7dL
        0xd83ddca9L
        0xd83ddd25L
        0x2728
        0xd83cdf1fL
        0xd83ddcabL
        0xd83ddca5L
        0xd83ddca2L
        0xd83ddca6L
        0xd83ddca7L
        0xd83ddca4L
        0xd83ddca8L
        0xd83ddc42L
        0xd83ddc40L
        0xd83ddc43L
        0xd83ddc45L
        0xd83ddc44L
        0xd83ddc4dL
        0xd83ddc4eL
        0xd83ddc4cL
        0xd83ddc4aL
        0x270a
        0x270c
        0xd83ddc4bL
        0x270b
        0xd83ddc50L
        0xd83ddc46L
        0xd83ddc47L
        0xd83ddc49L
        0xd83ddc48L
        0xd83dde4cL
        0xd83dde4fL
        0x261d
        0xd83ddc4fL
        0xd83ddcaaL
        0xd83ddeb6L
        0xd83cdfc3L
        0xd83ddc83L
        0xd83ddc6bL
        0xd83ddc6aL
        0xd83ddc6cL
        0xd83ddc6dL
        0xd83ddc8fL
        0xd83ddc91L
        0xd83ddc6fL
        0xd83dde46L
        0xd83dde45L
        0xd83ddc81L
        0xd83dde4bL
        0xd83ddc86L
        0xd83ddc87L
        0xd83ddc85L
        0xd83ddc70L
        0xd83dde4eL
        0xd83dde4dL
        0xd83dde47L
        0xd83cdfa9L
        0xd83ddc51L
        0xd83ddc52L
        0xd83ddc5fL
        0xd83ddc5eL
        0xd83ddc61L
        0xd83ddc60L
        0xd83ddc62L
        0xd83ddc55L
        0xd83ddc54L
        0xd83ddc5aL
        0xd83ddc57L
        0xd83cdfbdL
        0xd83ddc56L
        0xd83ddc58L
        0xd83ddc59L
        0xd83ddcbcL
        0xd83ddc5cL
        0xd83ddc5dL
        0xd83ddc5bL
        0xd83ddc53L
        0xd83cdf80L
        0xd83cdf02L
        0xd83ddc84L
        0xd83ddc9bL
        0xd83ddc99L
        0xd83ddc9cL
        0xd83ddc9aL
        0x2764
        0xd83ddc94L
        0xd83ddc97L
        0xd83ddc93L
        0xd83ddc95L
        0xd83ddc96L
        0xd83ddc9eL
        0xd83ddc98L
        0xd83ddc8cL
        0xd83ddc8bL
        0xd83ddc8dL
        0xd83ddc8eL
        0xd83ddc64L
        0xd83ddc65L
        0xd83ddcacL
        0xd83ddc63L
        0xd83ddcadL
    .end array-data

    .line 57
    :array_1
    .array-data 8
        0xd83ddc36L
        0xd83ddc3aL
        0xd83ddc31L
        0xd83ddc2dL
        0xd83ddc39L
        0xd83ddc30L
        0xd83ddc38L
        0xd83ddc2fL
        0xd83ddc28L
        0xd83ddc3bL
        0xd83ddc37L
        0xd83ddc3dL
        0xd83ddc2eL
        0xd83ddc17L
        0xd83ddc35L
        0xd83ddc12L
        0xd83ddc34L
        0xd83ddc11L
        0xd83ddc18L
        0xd83ddc3cL
        0xd83ddc27L
        0xd83ddc26L
        0xd83ddc24L
        0xd83ddc25L
        0xd83ddc23L
        0xd83ddc14L
        0xd83ddc0dL
        0xd83ddc22L
        0xd83ddc1bL
        0xd83ddc1dL
        0xd83ddc1cL
        0xd83ddc1eL
        0xd83ddc0cL
        0xd83ddc19L
        0xd83ddc1aL
        0xd83ddc20L
        0xd83ddc1fL
        0xd83ddc2cL
        0xd83ddc33L
        0xd83ddc0bL
        0xd83ddc04L
        0xd83ddc0fL
        0xd83ddc00L
        0xd83ddc03L
        0xd83ddc05L
        0xd83ddc07L
        0xd83ddc09L
        0xd83ddc0eL
        0xd83ddc10L
        0xd83ddc13L
        0xd83ddc15L
        0xd83ddc16L
        0xd83ddc01L
        0xd83ddc02L
        0xd83ddc32L
        0xd83ddc21L
        0xd83ddc0aL
        0xd83ddc2bL
        0xd83ddc2aL
        0xd83ddc06L
        0xd83ddc08L
        0xd83ddc29L
        0xd83ddc3eL
        0xd83ddc90L
        0xd83cdf38L
        0xd83cdf37L
        0xd83cdf40L
        0xd83cdf39L
        0xd83cdf3bL
        0xd83cdf3aL
        0xd83cdf41L
        0xd83cdf43L
        0xd83cdf42L
        0xd83cdf3fL
        0xd83cdf3eL
        0xd83cdf44L
        0xd83cdf35L
        0xd83cdf34L
        0xd83cdf32L
        0xd83cdf33L
        0xd83cdf30L
        0xd83cdf31L
        0xd83cdf3cL
        0xd83cdf10L
        0xd83cdf1eL
        0xd83cdf1dL
        0xd83cdf1aL
        0xd83cdf11L
        0xd83cdf12L
        0xd83cdf13L
        0xd83cdf14L
        0xd83cdf15L
        0xd83cdf16L
        0xd83cdf17L
        0xd83cdf18L
        0xd83cdf1cL
        0xd83cdf1bL
        0xd83cdf19L
        0xd83cdf0dL
        0xd83cdf0eL
        0xd83cdf0fL
        0xd83cdf0bL
        0xd83cdf0cL
        0xd83cdf20L
        0x2b50
        0x2600
        0x26c5
        0x2601
        0x26a1
        0x2614
        0x2744
        0x26c4
        0xd83cdf00L
        0xd83cdf01L
        0xd83cdf08L
        0xd83cdf0aL
    .end array-data

    .line 74
    :array_2
    .array-data 8
        0xd83cdf8dL
        0xd83ddc9dL
        0xd83cdf8eL
        0xd83cdf92L
        0xd83cdf93L
        0xd83cdf8fL
        0xd83cdf86L
        0xd83cdf87L
        0xd83cdf90L
        0xd83cdf91L
        0xd83cdf83L
        0xd83ddc7bL
        0xd83cdf85L
        0xd83cdf84L
        0xd83cdf81L
        0xd83cdf8bL
        0xd83cdf89L
        0xd83cdf8aL
        0xd83cdf88L
        0xd83cdf8cL
        0xd83ddd2eL
        0xd83cdfa5L
        0xd83ddcf7L
        0xd83ddcf9L
        0xd83ddcfcL
        0xd83ddcbfL
        0xd83ddcc0L
        0xd83ddcbdL
        0xd83ddcbeL
        0xd83ddcbbL
        0xd83ddcf1L
        0x260e
        0xd83ddcdeL
        0xd83ddcdfL
        0xd83ddce0L
        0xd83ddce1L
        0xd83ddcfaL
        0xd83ddcfbL
        0xd83ddd0aL
        0xd83ddd09L
        0xd83ddd08L
        0xd83ddd07L
        0xd83ddd14L
        0xd83ddd14L
        0xd83ddce2L
        0xd83ddce3L
        0x23f3
        0x231b
        0x23f0
        0x231a
        0xd83ddd13L
        0xd83ddd12L
        0xd83ddd0fL
        0xd83ddd10L
        0xd83ddd11L
        0xd83ddd0eL
        0xd83ddca1L
        0xd83ddd26L
        0xd83ddd06L
        0xd83ddd05L
        0xd83ddd0cL
        0xd83ddd0bL
        0xd83ddd0dL
        0xd83ddec0L
        0xd83ddebfL
        0xd83ddebdL
        0xd83ddd27L
        0xd83ddd29L
        0xd83ddd28L
        0xd83ddeaaL
        0xd83ddeacL
        0xd83ddca3L
        0xd83ddd2bL
        0xd83ddd2aL
        0xd83ddc8aL
        0xd83ddc89L
        0xd83ddcb0L
        0xd83ddcb4L
        0xd83ddcb5L
        0xd83ddcb7L
        0xd83ddcb6L
        0xd83ddcb3L
        0xd83ddcb8L
        0xd83ddcf2L
        0xd83ddce7L
        0xd83ddce5L
        0xd83ddce4L
        0x2709
        0xd83ddce9L
        0xd83ddce8L
        0xd83ddcefL
        0xd83ddcebL
        0xd83ddceaL
        0xd83ddcecL
        0xd83ddcedL
        0xd83ddceeL
        0xd83ddce6L
        0xd83ddcddL
        0xd83ddcc4L
        0xd83ddcc3L
        0xd83ddcd1L
        0xd83ddccaL
        0xd83ddcc8L
        0xd83ddcc9L
        0xd83ddcdcL
        0xd83ddccbL
        0xd83ddcc5L
        0xd83ddcc6L
        0xd83ddcc7L
        0xd83ddcc1L
        0xd83ddcc2L
        0x2702
        0xd83ddcccL
        0xd83ddcceL
        0x2712
        0x270f
        0xd83ddccfL
        0xd83ddcd0L
        0xd83ddcd5L
        0xd83ddcd7L
        0xd83ddcd8L
        0xd83ddcd9L
        0xd83ddcd3L
        0xd83ddcd4L
        0xd83ddcd2L
        0xd83ddcdaL
        0xd83ddcd6L
        0xd83ddd16L
        0xd83ddcdbL
        0xd83ddd2cL
        0xd83ddd2dL
        0xd83ddcf0L
        0xd83cdfa8L
        0xd83cdfacL
        0xd83cdfa4L
        0xd83cdfa7L
        0xd83cdfbcL
        0xd83cdfb5L
        0xd83cdfb6L
        0xd83cdfb9L
        0xd83cdfbbL
        0xd83cdfbaL
        0xd83cdfb7L
        0xd83cdfb8L
        0xd83ddc7eL
        0xd83cdfaeL
        0xd83cdccfL
        0xd83cdfb4L
        0xd83cdc04L
        0xd83cdfb2L
        0xd83cdfafL
        0xd83cdfc8L
        0xd83cdfc0L
        0x26bd
        0x26be
        0xd83cdfbeL
        0xd83cdfb1L
        0xd83cdfc9L
        0xd83cdfb3L
        0x26f3
        0xd83ddeb5L
        0xd83ddeb4L
        0xd83cdfc1L
        0xd83cdfc7L
        0xd83cdfc6L
        0xd83cdfbfL
        0xd83cdfc2L
        0xd83cdfcaL
        0xd83cdfc4L
        0xd83cdfa3L
        0x2615
        0xd83cdf75L
        0xd83cdf76L
        0xd83cdf7cL
        0xd83cdf7aL
        0xd83cdf7bL
        0xd83cdf78L
        0xd83cdf79L
        0xd83cdf77L
        0xd83cdf74L
        0xd83cdf55L
        0xd83cdf54L
        0xd83cdf5fL
        0xd83cdf57L
        0xd83cdf56L
        0xd83cdf5dL
        0xd83cdf5bL
        0xd83cdf64L
        0xd83cdf71L
        0xd83cdf63L
        0xd83cdf65L
        0xd83cdf59L
        0xd83cdf58L
        0xd83cdf5aL
        0xd83cdf5cL
        0xd83cdf72L
        0xd83cdf62L
        0xd83cdf61L
        0xd83cdf73L
        0xd83cdf5eL
        0xd83cdf69L
        0xd83cdf6eL
        0xd83cdf66L
        0xd83cdf68L
        0xd83cdf67L
        0xd83cdf82L
        0xd83cdf70L
        0xd83cdf6aL
        0xd83cdf6bL
        0xd83cdf6cL
        0xd83cdf6dL
        0xd83cdf6fL
        0xd83cdf4eL
        0xd83cdf4fL
        0xd83cdf4aL
        0xd83cdf4bL
        0xd83cdf52L
        0xd83cdf47L
        0xd83cdf49L
        0xd83cdf53L
        0xd83cdf51L
        0xd83cdf48L
        0xd83cdf4cL
        0xd83cdf50L
        0xd83cdf4dL
        0xd83cdf60L
        0xd83cdf46L
        0xd83cdf45L
        0xd83cdf3dL
    .end array-data

    .line 107
    :array_3
    .array-data 8
        0xd83cdfe0L
        0xd83cdfe1L
        0xd83cdfebL
        0xd83cdfe2L
        0xd83cdfe3L
        0xd83cdfe5L
        0xd83cdfe6L
        0xd83cdfeaL
        0xd83cdfe9L
        0xd83cdfe8L
        0xd83ddc92L
        0x26ea
        0xd83cdfecL
        0xd83cdfe4L
        0xd83cdf07L
        0xd83cdf06L
        0xd83cdfefL
        0xd83cdff0L
        0x26fa
        0xd83cdfedL
        0xd83dddfcL
        0xd83dddfeL
        0xd83dddfbL
        0xd83cdf04L
        0xd83cdf05L
        0xd83cdf03L
        0xd83dddfdL
        0xd83cdf09L
        0xd83cdfa0L
        0xd83cdfa1L
        0x26f2
        0xd83cdfa2L
        0xd83ddea2L
        0x26f5
        0xd83ddea4L
        0xd83ddea3L
        0x2693
        0xd83dde80L
        0x2708
        0xd83ddcbaL
        0xd83dde81L
        0xd83dde82L
        0xd83dde8aL
        0xd83dde89L
        0xd83dde9eL
        0xd83dde86L
        0xd83dde84L
        0xd83dde85L
        0xd83dde88L
        0xd83dde87L
        0xd83dde9dL
        0xd83dde8bL
        0xd83dde83L
        0xd83dde8eL
        0xd83dde8cL
        0xd83dde8dL
        0xd83dde99L
        0xd83dde98L
        0xd83dde97L
        0xd83dde95L
        0xd83dde96L
        0xd83dde9bL
        0xd83dde9aL
        0xd83ddea8L
        0xd83dde93L
        0xd83dde94L
        0xd83dde92L
        0xd83dde91L
        0xd83dde90L
        0xd83ddeb2L
        0xd83ddea1L
        0xd83dde9fL
        0xd83ddea0L
        0xd83dde9cL
        0xd83ddc88L
        0xd83dde8fL
        0xd83cdfabL
        0xd83ddea6L
        0xd83ddea5L
        0x26a0
        0xd83ddea7L
        0xd83ddd30L
        0x26fd
        0xd83cdfeeL
        0xd83cdfb0L
        0x2668
        0xd83dddffL
        0xd83cdfaaL
        0xd83cdfadL
        0xd83ddccdL
        0xd83ddea9L
        -0x27c3221027c3220bL    # -1.1374153877337526E117
        -0x27c3220f27c32209L    # -1.1374159889606541E117
        -0x27c3221627c32216L
        -0x27c3221727c3220dL    # -1.137411179145444E117
        -0x27c3220527c32208L    # -1.1374220012296661E117
        -0x27c3221427c32209L    # -1.1374129828261481E117
        -0x27c3221527c32208L
        -0x27c3221127c32207L    # -1.137414786506852E117
        -0x27c3220827c32206L
        -0x27c3221327c32219L    # -1.1374135840530471E117
    .end array-data

    .line 122
    :array_4
    .array-data 8
        0x3120e3
        0x3220e3
        0x3320e3
        0x3420e3
        0x3520e3
        0x3620e3
        0x3720e3
        0x3820e3
        0x3920e3
        0x3020e3
        0xd83ddd1fL
        0xd83ddd22L
        0x2320e3
        0xd83ddd23L
        0x2b06
        0x2b07
        0x2b05
        0x27a1
        0xd83ddd20L
        0xd83ddd21L
        0xd83ddd24L
        0x2197
        0x2196
        0x2198
        0x2199
        0x2194
        0x2195
        0xd83ddd04L
        0x25c0
        0x25b6
        0xd83ddd3cL
        0xd83ddd3dL
        0x21a9
        0x21aa
        0x2139
        0x23ea
        0x23e9
        0x23eb
        0x23ec
        0x2935
        0x2934
        0xd83cdd97L
        0xd83ddd00L
        0xd83ddd01L
        0xd83ddd02L
        0xd83cdd95L
        0xd83cdd99L
        0xd83cdd92L
        0xd83cdd93L
        0xd83cdd96L
        0xd83ddcf6L
        0xd83cdfa6L
        0xd83cde01L
        0xd83cde2fL
        0xd83cde33L
        0xd83cde35L
        0xd83cde32L
        0xd83cde34L
        0xd83cde32L
        0xd83cde50L
        0xd83cde39L
        0xd83cde3aL
        0xd83cde36L
        0xd83cde1aL
        0xd83ddebbL
        0xd83ddeb9L
        0xd83ddebaL
        0xd83ddebcL
        0xd83ddebeL
        0xd83ddeb0L
        0xd83ddeaeL
        0xd83cdd7fL
        0x267f
        0xd83ddeadL
        0xd83cde37L
        0xd83cde38L
        0xd83cde02L
        0x24c2
        0xd83cde51L
        0x3299
        0x3297
        0xd83cdd91L
        0xd83cdd98L
        0xd83cdd94L
        0xd83ddeabL
        0xd83ddd1eL
        0xd83ddcf5L
        0xd83ddeafL
        0xd83ddeb1L
        0xd83ddeb3L
        0xd83ddeb7L
        0xd83ddeb8L
        0x26d4
        0x2733
        0x2747
        0x274e
        0x2705
        0x2734
        0xd83ddc9fL
        0xd83cdd9aL
        0xd83ddcf3L
        0xd83ddcf4L
        0xd83cdd70L
        0xd83cdd71L
        0xd83cdd8eL
        0xd83cdd7eL
        0xd83ddca0L
        0x27bf
        0x267b
        0x2648
        0x2649
        0x264a
        0x264b
        0x264c
        0x264d
        0x264e
        0x264f
        0x2650
        0x2651
        0x2652
        0x2653
        0x26ce
        0xd83ddd2fL
        0xd83cdfe7L
        0xd83ddcb9L
        0xd83ddcb2L
        0xd83ddcb1L
        0xa9
        0xae
        0x2122
        0x303d
        0x3030
        0xd83ddd1dL
        0xd83ddd1aL
        0xd83ddd19L
        0xd83ddd1bL
        0xd83ddd1cL
        0x274c
        0x2b55
        0x2757
        0x2753
        0x2755
        0x2754
        0xd83ddd03L
        0xd83ddd5bL
        0xd83ddd67L
        0xd83ddd50L
        0xd83ddd5cL
        0xd83ddd51L
        0xd83ddd5dL
        0xd83ddd52L
        0xd83ddd5eL
        0xd83ddd53L
        0xd83ddd5fL
        0xd83ddd54L
        0xd83ddd60L
        0xd83ddd55L
        0xd83ddd56L
        0xd83ddd57L
        0xd83ddd58L
        0xd83ddd59L
        0xd83ddd5aL
        0xd83ddd61L
        0xd83ddd62L
        0xd83ddd63L
        0xd83ddd64L
        0xd83ddd65L
        0xd83ddd66L
        0x2716
        0x2795
        0x2796
        0x2797
        0x2660
        0x2665
        0x2663
        0x2666
        0xd83ddcaeL
        0xd83ddcafL
        0x2714
        0x2611
        0xd83ddd18L
        0xd83ddd17L
        0x27b0
        0xd83ddd31L
        0xd83ddd32L
        0xd83ddd33L
        0x25fc
        0x25fb
        0x25fe
        0x25fd
        0x25aa
        0x25ab
        0xd83ddd3aL
        0x2b1c
        0x2b1b
        0x26ab
        0x26aa
        0xd83ddd34L
        0xd83ddd35L
        0xd83ddd3bL
        0xd83ddd36L
        0xd83ddd37L
        0xd83ddd38L
        0xd83ddd39L
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 156
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/EmojiView;->views:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/EmojiView;->adapters:Ljava/util/ArrayList;

    .line 151
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/vkontakte/android/EmojiView;->icons:[I

    .line 157
    invoke-direct {p0}, Lcom/vkontakte/android/EmojiView;->init()V

    .line 158
    return-void

    .line 151
    nop

    :array_0
    .array-data 4
        0x7f020130
        0x7f020133
        0x7f02012d
        0x7f020127
        0x7f02012a
        0x7f020136
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 161
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/EmojiView;->views:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/EmojiView;->adapters:Ljava/util/ArrayList;

    .line 151
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/vkontakte/android/EmojiView;->icons:[I

    .line 162
    invoke-direct {p0}, Lcom/vkontakte/android/EmojiView;->init()V

    .line 163
    return-void

    .line 151
    nop

    :array_0
    .array-data 4
        0x7f020130
        0x7f020133
        0x7f02012d
        0x7f020127
        0x7f02012a
        0x7f020136
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 166
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/EmojiView;->views:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/EmojiView;->adapters:Ljava/util/ArrayList;

    .line 151
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/vkontakte/android/EmojiView;->icons:[I

    .line 167
    invoke-direct {p0}, Lcom/vkontakte/android/EmojiView;->init()V

    .line 168
    return-void

    .line 151
    nop

    :array_0
    .array-data 4
        0x7f020130
        0x7f020133
        0x7f02012d
        0x7f020127
        0x7f02012a
        0x7f020136
    .end array-data
.end method

.method static synthetic access$0(Lcom/vkontakte/android/EmojiView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView;->views:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/EmojiView;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView;->recentsWrap:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/EmojiView;)[I
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView;->icons:[I

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/EmojiView;)Lcom/vkontakte/android/EmojiView$Listener;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView;->listener:Lcom/vkontakte/android/EmojiView$Listener;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/EmojiView;J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/EmojiView;->convert(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/EmojiView;J)V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/EmojiView;->addToRecent(J)V

    return-void
.end method

.method private addToRecent(J)V
    .locals 9
    .param p1, "c"    # J

    .prologue
    const/4 v5, 0x0

    .line 237
    iget-object v4, p0, Lcom/vkontakte/android/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    if-nez v4, :cond_0

    .line 249
    :goto_0
    return-void

    .line 238
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v3, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v4, Lcom/vkontakte/android/EmojiView;->data:[[J

    aget-object v6, v4, v5

    array-length v7, v6

    move v4, v5

    :goto_1
    if-lt v4, v7, :cond_2

    .line 240
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 241
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 242
    sget-object v4, Lcom/vkontakte/android/EmojiView;->data:[[J

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v7, 0x32

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    new-array v6, v6, [J

    aput-object v6, v4, v5

    .line 243
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    sget-object v4, Lcom/vkontakte/android/EmojiView;->data:[[J

    aget-object v4, v4, v5

    array-length v4, v4

    if-lt v2, v4, :cond_3

    .line 246
    iget-object v4, p0, Lcom/vkontakte/android/EmojiView;->adapters:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/EmojiView$EmojiGridAdapter;

    sget-object v6, Lcom/vkontakte/android/EmojiView;->data:[[J

    aget-object v6, v6, v5

    iput-object v6, v4, Lcom/vkontakte/android/EmojiView$EmojiGridAdapter;->data:[J

    .line 247
    iget-object v4, p0, Lcom/vkontakte/android/EmojiView;->adapters:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/EmojiView$EmojiGridAdapter;

    invoke-virtual {v4}, Lcom/vkontakte/android/EmojiView$EmojiGridAdapter;->notifyDataSetChanged()V

    .line 248
    invoke-direct {p0}, Lcom/vkontakte/android/EmojiView;->saveRecents()V

    goto :goto_0

    .line 239
    .end local v2    # "i":I
    :cond_2
    aget-wide v0, v6, v4

    .local v0, "e":J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 244
    .end local v0    # "e":J
    .restart local v2    # "i":I
    :cond_3
    sget-object v4, Lcom/vkontakte/android/EmojiView;->data:[[J

    aget-object v6, v4, v5

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    aput-wide v7, v6, v2

    .line 243
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private convert(J)Ljava/lang/String;
    .locals 7
    .param p1, "code"    # J

    .prologue
    .line 273
    const-string v2, ""

    .line 274
    .local v2, "s":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x4

    if-lt v1, v3, :cond_0

    .line 279
    return-object v2

    .line 275
    :cond_0
    rsub-int/lit8 v3, v1, 0x3

    mul-int/lit8 v3, v3, 0x10

    shr-long v3, p1, v3

    const-wide/32 v5, 0xffff

    and-long/2addr v3, v5

    long-to-int v0, v3

    .line 276
    .local v0, "cc":I
    if-eqz v0, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 274
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private init()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 171
    invoke-virtual {p0, v12}, Lcom/vkontakte/android/EmojiView;->setOrientation(I)V

    .line 173
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    sget-object v6, Lcom/vkontakte/android/EmojiView;->data:[[J

    array-length v6, v6

    if-lt v4, v6, :cond_0

    .line 183
    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    sget-object v7, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_0

    invoke-direct {v6, v7, v8}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/EmojiView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    new-instance v6, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/vkontakte/android/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/vkontakte/android/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    .line 186
    iget-object v6, p0, Lcom/vkontakte/android/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v7, Lcom/vkontakte/android/EmojiView$EmojiPagesAdapter;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/vkontakte/android/EmojiView$EmojiPagesAdapter;-><init>(Lcom/vkontakte/android/EmojiView;Lcom/vkontakte/android/EmojiView$EmojiPagesAdapter;)V

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 188
    new-instance v6, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-virtual {p0}, Lcom/vkontakte/android/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/vkontakte/android/EmojiView;->tabs:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    .line 189
    iget-object v6, p0, Lcom/vkontakte/android/EmojiView;->tabs:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    iget-object v7, p0, Lcom/vkontakte/android/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6, v7}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 191
    iget-object v6, p0, Lcom/vkontakte/android/EmojiView;->tabs:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-virtual {v6, v12}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setShouldExpand(Z)V

    .line 192
    iget-object v6, p0, Lcom/vkontakte/android/EmojiView;->tabs:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    const v7, -0x1a1a1b

    invoke-virtual {v6, v7}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setIndicatorColor(I)V

    .line 193
    iget-object v6, p0, Lcom/vkontakte/android/EmojiView;->tabs:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setIndicatorHeight(I)V

    .line 194
    iget-object v6, p0, Lcom/vkontakte/android/EmojiView;->tabs:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setUnderlineHeight(I)V

    .line 195
    iget-object v6, p0, Lcom/vkontakte/android/EmojiView;->tabs:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    const/high16 v7, 0x66000000

    invoke-virtual {v6, v7}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setUnderlineColor(I)V

    .line 196
    iget-object v6, p0, Lcom/vkontakte/android/EmojiView;->tabs:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-virtual {v6, v10}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setTabBackground(I)V

    .line 198
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 199
    .local v5, "tabsWrap":Landroid/widget/LinearLayout;
    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 200
    iget-object v6, p0, Lcom/vkontakte/android/EmojiView;->tabs:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v7, v9, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/vkontakte/android/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 203
    .local v1, "bsBtn":Landroid/widget/ImageView;
    const v6, 0x7f020124

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 204
    const v6, 0x7f020095

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 205
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 206
    new-instance v6, Lcom/vkontakte/android/EmojiView$1;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/EmojiView$1;-><init>(Lcom/vkontakte/android/EmojiView;)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    new-instance v6, Lcom/vkontakte/android/EmojiView$2;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/EmojiView$2;-><init>(Lcom/vkontakte/android/EmojiView;)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 219
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x42740000    # 61.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-direct {v6, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/vkontakte/android/EmojiView;->recentsWrap:Landroid/widget/FrameLayout;

    .line 222
    iget-object v7, p0, Lcom/vkontakte/android/EmojiView;->recentsWrap:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/vkontakte/android/EmojiView;->views:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 223
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 224
    .local v2, "empty":Landroid/widget/TextView;
    const v6, 0x7f0601e0

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 225
    const/high16 v6, 0x41900000    # 18.0f

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 226
    const v6, -0x777778

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 227
    const/16 v6, 0x11

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 228
    iget-object v6, p0, Lcom/vkontakte/android/EmojiView;->recentsWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 229
    iget-object v6, p0, Lcom/vkontakte/android/EmojiView;->views:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/GridView;

    invoke-virtual {v6, v2}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    .line 231
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x42400000    # 48.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-direct {v6, v9, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v5, v6}, Lcom/vkontakte/android/EmojiView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    iget-object v6, p0, Lcom/vkontakte/android/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/EmojiView;->addView(Landroid/view/View;)V

    .line 233
    invoke-virtual {p0}, Lcom/vkontakte/android/EmojiView;->loadRecents()V

    .line 234
    return-void

    .line 174
    .end local v1    # "bsBtn":Landroid/widget/ImageView;
    .end local v2    # "empty":Landroid/widget/TextView;
    .end local v5    # "tabsWrap":Landroid/widget/LinearLayout;
    :cond_0
    new-instance v3, Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/vkontakte/android/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 175
    .local v3, "gv":Landroid/widget/GridView;
    const/high16 v6, 0x42340000    # 45.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 176
    invoke-virtual {v3, v9}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 177
    new-instance v0, Lcom/vkontakte/android/EmojiView$EmojiGridAdapter;

    sget-object v6, Lcom/vkontakte/android/EmojiView;->data:[[J

    aget-object v6, v6, v4

    invoke-direct {v0, p0, v6}, Lcom/vkontakte/android/EmojiView$EmojiGridAdapter;-><init>(Lcom/vkontakte/android/EmojiView;[J)V

    .line 178
    .local v0, "adapter":Lcom/vkontakte/android/EmojiView$EmojiGridAdapter;
    invoke-virtual {v3, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 179
    iget-object v6, p0, Lcom/vkontakte/android/EmojiView;->adapters:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v6, p0, Lcom/vkontakte/android/EmojiView;->views:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 183
    :array_0
    .array-data 4
        -0xd7d7d8
        -0x1000000
    .end array-data
.end method

.method private saveRecents()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 252
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v2, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v3, Lcom/vkontakte/android/EmojiView;->data:[[J

    aget-object v5, v3, v4

    array-length v6, v5

    move v3, v4

    :goto_0
    if-lt v3, v6, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/vkontakte/android/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "emoji"

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "recents"

    const-string v5, ","

    invoke-static {v5, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 255
    return-void

    .line 253
    :cond_0
    aget-wide v0, v5, v3

    .local v0, "e":J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public loadRecents()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 258
    invoke-virtual {p0}, Lcom/vkontakte/android/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "emoji"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "recents"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, "r":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 260
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, "sp":[Ljava/lang/String;
    sget-object v3, Lcom/vkontakte/android/EmojiView;->data:[[J

    array-length v4, v2

    new-array v4, v4, [J

    aput-object v4, v3, v6

    .line 263
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    array-length v3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v0, v3, :cond_1

    .line 267
    :goto_1
    iget-object v3, p0, Lcom/vkontakte/android/EmojiView;->adapters:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/EmojiView$EmojiGridAdapter;

    sget-object v4, Lcom/vkontakte/android/EmojiView;->data:[[J

    aget-object v4, v4, v6

    iput-object v4, v3, Lcom/vkontakte/android/EmojiView$EmojiGridAdapter;->data:[J

    .line 268
    iget-object v3, p0, Lcom/vkontakte/android/EmojiView;->adapters:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/EmojiView$EmojiGridAdapter;

    invoke-virtual {v3}, Lcom/vkontakte/android/EmojiView$EmojiGridAdapter;->notifyDataSetChanged()V

    .line 270
    .end local v0    # "i":I
    .end local v2    # "sp":[Ljava/lang/String;
    :cond_0
    return-void

    .line 264
    .restart local v0    # "i":I
    .restart local v2    # "sp":[Ljava/lang/String;
    :cond_1
    :try_start_1
    sget-object v3, Lcom/vkontakte/android/EmojiView;->data:[[J

    const/4 v4, 0x0

    aget-object v3, v3, v4

    aget-object v4, v2, v0

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v3, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public onMeasure(II)V
    .locals 3
    .param p1, "wms"    # I
    .param p2, "hms"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 283
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 284
    return-void
.end method

.method public setListener(Lcom/vkontakte/android/EmojiView$Listener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkontakte/android/EmojiView$Listener;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/vkontakte/android/EmojiView;->listener:Lcom/vkontakte/android/EmojiView$Listener;

    .line 288
    return-void
.end method
