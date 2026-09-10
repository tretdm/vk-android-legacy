.class public Lcom/vkontakte/android/EmojiView;
.super Landroid/widget/LinearLayout;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/EmojiView$EmojiGridAdapter;,
        Lcom/vkontakte/android/EmojiView$EmojiPagesAdapter;,
        Lcom/vkontakte/android/EmojiView$Listener;,
        Lcom/vkontakte/android/EmojiView$RecentItem;,
        Lcom/vkontakte/android/EmojiView$StickerListener;,
        Lcom/vkontakte/android/EmojiView$StickerPackTab;,
        Lcom/vkontakte/android/EmojiView$StickersPagesAdapter;
    }
.end annotation


# static fields
.field private static final ITERATION_LEN:I = 0x5

.field public static data:[[J

.field private static permFailedPacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static promotedPacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/vkontakte/android/data/StickerPack;",
            ">;"
        }
    .end annotation
.end field


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

.field private bottomTabs:Landroid/widget/HorizontalScrollView;

.field private btmTabsContent:Landroid/widget/LinearLayout;

.field private currentStickerPack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/StickerAttachment;",
            ">;"
        }
    .end annotation
.end field

.field private currentTab:I

.field private emojiTabsWrap:Landroid/widget/LinearLayout;

.field private icons:[I

.field private listener:Lcom/vkontakte/android/EmojiView$Listener;

.field private pager:Landroid/support/v4/view/ViewPager;

.field private promotedClickListener:Landroid/view/View$OnClickListener;

.field private recentsWrap:Landroid/widget/FrameLayout;

.field private runAfterPreload:Ljava/lang/Runnable;

.field private showStickers:Z

.field private stickerClickListener:Landroid/view/View$OnClickListener;

.field private stickerPagerDots:Landroid/widget/LinearLayout;

.field private stickerRows:I

.field private stickerSize:I

.field private stickers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/EmojiView$StickerPackTab;",
            ">;"
        }
    .end annotation
.end field

.field private stickersAdapter:Lcom/vkontakte/android/EmojiView$StickersPagesAdapter;

.field private stickersPager:Landroid/support/v4/view/ViewPager;

.field private stickersPerRow:I

.field private stickersPreloading:Z

.field private stickersWrap:Landroid/widget/LinearLayout;

.field private storeClickListener:Landroid/view/View$OnClickListener;

.field private tabClickListener:Landroid/view/View$OnClickListener;

.field private tabs:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

.field public tempFailedPacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private useCounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

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

    .line 58
    const/4 v0, 0x6

    new-array v0, v0, [[J

    new-array v1, v2, [J

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 59
    const/16 v2, 0xbd

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    .line 85
    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 86
    const/16 v2, 0x74

    new-array v2, v2, [J

    fill-array-data v2, :array_1

    .line 102
    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 103
    const/16 v2, 0xe5

    new-array v2, v2, [J

    fill-array-data v2, :array_2

    .line 135
    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 136
    const/16 v2, 0x65

    new-array v2, v2, [J

    fill-array-data v2, :array_3

    .line 150
    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 151
    const/16 v2, 0xcc

    new-array v2, v2, [J

    fill-array-data v2, :array_4

    .line 179
    aput-object v2, v0, v1

    .line 58
    sput-object v0, Lcom/vkontakte/android/EmojiView;->data:[[J

    .line 255
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vkontakte/android/EmojiView;->promotedPacks:Ljava/util/HashMap;

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkontakte/android/EmojiView;->permFailedPacks:Ljava/util/ArrayList;

    return-void

    .line 59
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

    .line 86
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

    .line 103
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

    .line 136
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

    .line 151
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

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 268
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/EmojiView;->views:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/EmojiView;->adapters:Ljava/util/ArrayList;

    .line 180
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/vkontakte/android/EmojiView;->icons:[I

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/EmojiView;->stickers:Ljava/util/List;

    .line 184
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/EmojiView;->useCounts:Ljava/util/HashMap;

    .line 186
    new-instance v0, Lcom/vkontakte/android/EmojiView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/EmojiView$1;-><init>(Lcom/vkontakte/android/EmojiView;)V

    iput-object v0, p0, Lcom/vkontakte/android/EmojiView;->tabClickListener:Landroid/view/View$OnClickListener;

    .line 198
    new-instance v0, Lcom/vkontakte/android/EmojiView$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/EmojiView$2;-><init>(Lcom/vkontakte/android/EmojiView;)V

    iput-object v0, p0, Lcom/vkontakte/android/EmojiView;->storeClickListener:Landroid/view/View$OnClickListener;

    .line 205
    new-instance v0, Lcom/vkontakte/android/EmojiView$3;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/EmojiView$3;-><init>(Lcom/vkontakte/android/EmojiView;)V

    iput-object v0, p0, Lcom/vkontakte/android/EmojiView;->promotedClickListener:Landroid/view/View$OnClickListener;

    .line 234
    new-instance v0, Lcom/vkontakte/android/EmojiView$4;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/EmojiView$4;-><init>(Lcom/vkontakte/android/EmojiView;)V

    iput-object v0, p0, Lcom/vkontakte/android/EmojiView;->stickerClickListener:Landroid/view/View$OnClickListener;

    .line 253
    iput v1, p0, Lcom/vkontakte/android/EmojiView;->currentTab:I

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/EmojiView;->tempFailedPacks:Ljava/util/ArrayList;

    .line 258
    iput-boolean v1, p0, Lcom/vkontakte/android/EmojiView;->stickersPreloading:Z

    .line 259
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/EmojiView;->runAfterPreload:Ljava/lang/Runnable;

    .line 269
    invoke-direct {p0}, Lcom/vkontakte/android/EmojiView;->init()V

    .line 270
    return-void

    .line 180
    :array_0
    .array-data 4
        0x7f02013f
        0x7f020142
        0x7f02013c
        0x7f020136
        0x7f020139
        0x7f020145
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 273
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/EmojiView;->views:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/EmojiView;->adapters:Ljava/util/ArrayList;

    .line 180
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/vkontakte/android/EmojiView;->icons:[I

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/EmojiView;->stickers:Ljava/util/List;

    .line 184
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/EmojiView;->useCounts:Ljava/util/HashMap;

    .line 186
    new-instance v0, Lcom/vkontakte/android/EmojiView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/EmojiView$1;-><init>(Lcom/vkontakte/android/EmojiView;)V

    iput-object v0, p0, Lcom/vkontakte/android/EmojiView;->tabClickListener:Landroid/view/View$OnClickListener;

    .line 198
    new-instance v0, Lcom/vkontakte/android/EmojiView$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/EmojiView$2;-><init>(Lcom/vkontakte/android/EmojiView;)V

    iput-object v0, p0, Lcom/vkontakte/android/EmojiView;->storeClickListener:Landroid/view/View$OnClickListener;

    .line 205
    new-instance v0, Lcom/vkontakte/android/EmojiView$3;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/EmojiView$3;-><init>(Lcom/vkontakte/android/EmojiView;)V

    iput-object v0, p0, Lcom/vkontakte/android/EmojiView;->promotedClickListener:Landroid/view/View$OnClickListener;

    .line 234
    new-instance v0, Lcom/vkontakte/android/EmojiView$4;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/EmojiView$4;-><init>(Lcom/vkontakte/android/EmojiView;)V

    iput-object v0, p0, Lcom/vkontakte/android/EmojiView;->stickerClickListener:Landroid/view/View$OnClickListener;

    .line 253
    iput v1, p0, Lcom/vkontakte/android/EmojiView;->currentTab:I

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/EmojiView;->tempFailedPacks:Ljava/util/ArrayList;

    .line 258
    iput-boolean v1, p0, Lcom/vkontakte/android/EmojiView;->stickersPreloading:Z

    .line 259
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/EmojiView;->runAfterPreload:Ljava/lang/Runnable;

    .line 274
    invoke-direct {p0}, Lcom/vkontakte/android/EmojiView;->init()V

    .line 275
    return-void

    .line 180
    :array_0
    .array-data 4
        0x7f02013f
        0x7f020142
        0x7f02013c
        0x7f020136
        0x7f020139
        0x7f020145
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stickers"    # Z

    .prologue
    const/4 v1, 0x0

    .line 262
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/EmojiView;->views:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/EmojiView;->adapters:Ljava/util/ArrayList;

    .line 180
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/vkontakte/android/EmojiView;->icons:[I

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/EmojiView;->stickers:Ljava/util/List;

    .line 184
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/EmojiView;->useCounts:Ljava/util/HashMap;

    .line 186
    new-instance v0, Lcom/vkontakte/android/EmojiView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/EmojiView$1;-><init>(Lcom/vkontakte/android/EmojiView;)V

    iput-object v0, p0, Lcom/vkontakte/android/EmojiView;->tabClickListener:Landroid/view/View$OnClickListener;

    .line 198
    new-instance v0, Lcom/vkontakte/android/EmojiView$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/EmojiView$2;-><init>(Lcom/vkontakte/android/EmojiView;)V

    iput-object v0, p0, Lcom/vkontakte/android/EmojiView;->storeClickListener:Landroid/view/View$OnClickListener;

    .line 205
    new-instance v0, Lcom/vkontakte/android/EmojiView$3;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/EmojiView$3;-><init>(Lcom/vkontakte/android/EmojiView;)V

    iput-object v0, p0, Lcom/vkontakte/android/EmojiView;->promotedClickListener:Landroid/view/View$OnClickListener;

    .line 234
    new-instance v0, Lcom/vkontakte/android/EmojiView$4;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/EmojiView$4;-><init>(Lcom/vkontakte/android/EmojiView;)V

    iput-object v0, p0, Lcom/vkontakte/android/EmojiView;->stickerClickListener:Landroid/view/View$OnClickListener;

    .line 253
    iput v1, p0, Lcom/vkontakte/android/EmojiView;->currentTab:I

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/EmojiView;->tempFailedPacks:Ljava/util/ArrayList;

    .line 258
    iput-boolean v1, p0, Lcom/vkontakte/android/EmojiView;->stickersPreloading:Z

    .line 259
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/EmojiView;->runAfterPreload:Ljava/lang/Runnable;

    .line 263
    iput-boolean p2, p0, Lcom/vkontakte/android/EmojiView;->showStickers:Z

    .line 264
    invoke-direct {p0}, Lcom/vkontakte/android/EmojiView;->init()V

    .line 265
    return-void

    .line 180
    :array_0
    .array-data 4
        0x7f02013f
        0x7f020142
        0x7f02013c
        0x7f020136
        0x7f020139
        0x7f020145
    .end array-data
.end method

.method static synthetic access$0(Lcom/vkontakte/android/EmojiView;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView;->btmTabsContent:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/EmojiView;I)V
    .locals 0

    .prologue
    .line 534
    invoke-direct {p0, p1}, Lcom/vkontakte/android/EmojiView;->setTab(I)V

    return-void
.end method

.method static synthetic access$10(Lcom/vkontakte/android/EmojiView;)[I
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView;->icons:[I

    return-object v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/EmojiView;J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 792
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/EmojiView;->convert(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12(Lcom/vkontakte/android/EmojiView;J)V
    .locals 0

    .prologue
    .line 709
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/EmojiView;->addToRecent(J)V

    return-void
.end method

.method static synthetic access$13(Lcom/vkontakte/android/EmojiView;)I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/vkontakte/android/EmojiView;->stickersPerRow:I

    return v0
.end method

.method static synthetic access$14(Lcom/vkontakte/android/EmojiView;)I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/vkontakte/android/EmojiView;->stickerRows:I

    return v0
.end method

.method static synthetic access$15(Lcom/vkontakte/android/EmojiView;)I
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/vkontakte/android/EmojiView;->stickerSize:I

    return v0
.end method

.method static synthetic access$16(Lcom/vkontakte/android/EmojiView;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView;->stickerClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$17(Lcom/vkontakte/android/EmojiView;)I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lcom/vkontakte/android/EmojiView;->currentTab:I

    return v0
.end method

.method static synthetic access$18(Lcom/vkontakte/android/EmojiView;Ljava/util/List;II)V
    .locals 0

    .prologue
    .line 822
    invoke-direct {p0, p1, p2, p3}, Lcom/vkontakte/android/EmojiView;->loadStickers(Ljava/util/List;II)V

    return-void
.end method

.method static synthetic access$19(Lcom/vkontakte/android/EmojiView;)V
    .locals 0

    .prologue
    .line 734
    invoke-direct {p0}, Lcom/vkontakte/android/EmojiView;->updateRecents()V

    return-void
.end method

.method static synthetic access$2()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 255
    sget-object v0, Lcom/vkontakte/android/EmojiView;->promotedPacks:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$20(Lcom/vkontakte/android/EmojiView;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView;->stickerPagerDots:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$21(Lcom/vkontakte/android/EmojiView;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView;->stickersPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$22(Lcom/vkontakte/android/EmojiView;)Ljava/util/List;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView;->stickers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$23(Lcom/vkontakte/android/EmojiView;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 570
    invoke-direct {p0, p1}, Lcom/vkontakte/android/EmojiView;->setStickersBackground(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$24(Lcom/vkontakte/android/EmojiView;Z)V
    .locals 0

    .prologue
    .line 258
    iput-boolean p1, p0, Lcom/vkontakte/android/EmojiView;->stickersPreloading:Z

    return-void
.end method

.method static synthetic access$25(Lcom/vkontakte/android/EmojiView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView;->runAfterPreload:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$26()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 257
    sget-object v0, Lcom/vkontakte/android/EmojiView;->permFailedPacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/EmojiView;Lcom/vkontakte/android/data/StickerPack;)V
    .locals 0

    .prologue
    .line 412
    invoke-direct {p0, p1}, Lcom/vkontakte/android/EmojiView;->showStickersDetails(Lcom/vkontakte/android/data/StickerPack;)V

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/EmojiView;)Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/vkontakte/android/EmojiView;->stickersPreloading:Z

    return v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/EmojiView;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/vkontakte/android/EmojiView;->runAfterPreload:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/EmojiView;)Lcom/vkontakte/android/EmojiView$Listener;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView;->listener:Lcom/vkontakte/android/EmojiView$Listener;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/EmojiView;)Ljava/util/List;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView;->currentStickerPack:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/EmojiView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView;->views:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/EmojiView;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView;->recentsWrap:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private addToRecent(J)V
    .locals 10
    .param p1, "c"    # J

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 711
    invoke-virtual {p0}, Lcom/vkontakte/android/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "emoji"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "update_count"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 712
    .local v3, "updateCount":I
    add-int/lit8 v3, v3, 0x1

    .line 713
    invoke-virtual {p0}, Lcom/vkontakte/android/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "emoji"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "update_count"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 715
    if-lez v3, :cond_0

    rem-int/lit8 v4, v3, 0x5

    if-nez v4, :cond_0

    .line 716
    iget-object v4, p0, Lcom/vkontakte/android/EmojiView;->useCounts:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 717
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 722
    .end local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_0
    iget-object v4, p0, Lcom/vkontakte/android/EmojiView;->useCounts:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 723
    iget-object v4, p0, Lcom/vkontakte/android/EmojiView;->useCounts:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    :goto_1
    iget-object v4, p0, Lcom/vkontakte/android/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    if-eqz v4, :cond_1

    .line 728
    invoke-direct {p0}, Lcom/vkontakte/android/EmojiView;->updateRecents()V

    .line 731
    :cond_1
    invoke-direct {p0}, Lcom/vkontakte/android/EmojiView;->saveRecents()V

    .line 732
    return-void

    .line 717
    .restart local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 718
    .local v0, "key":J
    iget-object v6, p0, Lcom/vkontakte/android/EmojiView;->useCounts:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v4, p0, Lcom/vkontakte/android/EmojiView;->useCounts:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const v8, 0x3fa66666    # 1.3f

    div-float/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 725
    .end local v0    # "key":J
    .end local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_3
    iget-object v5, p0, Lcom/vkontakte/android/EmojiView;->useCounts:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v4, p0, Lcom/vkontakte/android/EmojiView;->useCounts:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private convert(J)Ljava/lang/String;
    .locals 7
    .param p1, "code"    # J

    .prologue
    .line 793
    const-string v2, ""

    .line 794
    .local v2, "s":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x4

    if-lt v1, v3, :cond_0

    .line 799
    return-object v2

    .line 795
    :cond_0
    rsub-int/lit8 v3, v1, 0x3

    mul-int/lit8 v3, v3, 0x10

    shr-long v3, p1, v3

    const-wide/32 v5, 0xffff

    and-long/2addr v3, v5

    long-to-int v0, v3

    .line 796
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

    .line 794
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private createTabView(Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)Landroid/widget/ImageView;
    .locals 6
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/high16 v4, 0x42400000    # 48.0f

    const/4 v5, 0x0

    .line 521
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/vkontakte/android/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 522
    .local v1, "v":Landroid/widget/ImageView;
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 523
    if-eqz p1, :cond_0

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 524
    :cond_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 525
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 527
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 528
    .local v0, "bg":Landroid/graphics/drawable/StateListDrawable;
    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x10100a1

    aput v3, v2, v5

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 529
    new-array v2, v5, [I

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 530
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 531
    return-object v1
.end method

.method private init()V
    .locals 13

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const/4 v11, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 278
    invoke-virtual {p0, v11}, Lcom/vkontakte/android/EmojiView;->setOrientation(I)V

    .line 280
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    sget-object v5, Lcom/vkontakte/android/EmojiView;->data:[[J

    array-length v5, v5

    if-lt v4, v5, :cond_0

    .line 290
    new-instance v5, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/vkontakte/android/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    .line 291
    iget-object v5, p0, Lcom/vkontakte/android/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v6, Lcom/vkontakte/android/EmojiView$EmojiPagesAdapter;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/vkontakte/android/EmojiView$EmojiPagesAdapter;-><init>(Lcom/vkontakte/android/EmojiView;Lcom/vkontakte/android/EmojiView$EmojiPagesAdapter;)V

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 293
    new-instance v5, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-virtual {p0}, Lcom/vkontakte/android/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/EmojiView;->tabs:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    .line 294
    iget-object v5, p0, Lcom/vkontakte/android/EmojiView;->tabs:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    iget-object v6, p0, Lcom/vkontakte/android/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v6}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 296
    iget-object v5, p0, Lcom/vkontakte/android/EmojiView;->tabs:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-virtual {v5, v11}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setShouldExpand(Z)V

    .line 297
    iget-object v5, p0, Lcom/vkontakte/android/EmojiView;->tabs:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    const v6, -0x8d8883

    invoke-virtual {v5, v6}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setIndicatorColor(I)V

    .line 298
    iget-object v5, p0, Lcom/vkontakte/android/EmojiView;->tabs:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    const v6, 0x4c8d96a1    # 7.4233096E7f

    invoke-virtual {v5, v6}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setUnderlineColor(I)V

    .line 299
    iget-object v5, p0, Lcom/vkontakte/android/EmojiView;->tabs:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-static {v12}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setIndicatorHeight(I)V

    .line 300
    iget-object v5, p0, Lcom/vkontakte/android/EmojiView;->tabs:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-static {v12}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setUnderlineHeight(I)V

    .line 301
    iget-object v5, p0, Lcom/vkontakte/android/EmojiView;->tabs:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    const v6, 0x338c9197

    invoke-virtual {v5, v6}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setDividerColor(I)V

    .line 302
    iget-object v5, p0, Lcom/vkontakte/android/EmojiView;->tabs:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-virtual {v5, v10}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setTabBackground(I)V

    .line 304
    const v5, -0x14110e

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/EmojiView;->setBackgroundColor(I)V

    .line 306
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/EmojiView;->emojiTabsWrap:Landroid/widget/LinearLayout;

    .line 307
    iget-object v5, p0, Lcom/vkontakte/android/EmojiView;->emojiTabsWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 308
    iget-object v5, p0, Lcom/vkontakte/android/EmojiView;->emojiTabsWrap:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/vkontakte/android/EmojiView;->tabs:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v9, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/vkontakte/android/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 311
    .local v1, "bsBtn":Landroid/widget/ImageView;
    const v5, 0x7f020133

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 312
    const v5, 0x7f020096

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 313
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 314
    new-instance v5, Lcom/vkontakte/android/EmojiView$5;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/EmojiView$5;-><init>(Lcom/vkontakte/android/EmojiView;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    iget-object v5, p0, Lcom/vkontakte/android/EmojiView;->emojiTabsWrap:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x42740000    # 61.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-direct {v6, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/EmojiView;->recentsWrap:Landroid/widget/FrameLayout;

    .line 330
    iget-object v6, p0, Lcom/vkontakte/android/EmojiView;->recentsWrap:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/vkontakte/android/EmojiView;->views:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 331
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 332
    .local v2, "empty":Landroid/widget/TextView;
    const v5, 0x7f0801fa

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 333
    const/high16 v5, 0x41900000    # 18.0f

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 334
    const v5, -0x777778

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 335
    const/16 v5, 0x11

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 336
    iget-object v5, p0, Lcom/vkontakte/android/EmojiView;->recentsWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 337
    iget-object v5, p0, Lcom/vkontakte/android/EmojiView;->views:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/GridView;

    invoke-virtual {v5, v2}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    .line 339
    iget-object v5, p0, Lcom/vkontakte/android/EmojiView;->emojiTabsWrap:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x42400000    # 48.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-direct {v6, v9, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v5, v6}, Lcom/vkontakte/android/EmojiView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 340
    iget-object v5, p0, Lcom/vkontakte/android/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v9, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v5, v6}, Lcom/vkontakte/android/EmojiView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    invoke-virtual {p0}, Lcom/vkontakte/android/EmojiView;->loadRecents()V

    .line 342
    iget-object v5, p0, Lcom/vkontakte/android/EmojiView;->tabs:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    new-instance v6, Lcom/vkontakte/android/EmojiView$6;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/EmojiView$6;-><init>(Lcom/vkontakte/android/EmojiView;)V

    invoke-virtual {v5, v6}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 363
    iget-boolean v5, p0, Lcom/vkontakte/android/EmojiView;->showStickers:Z

    if-nez v5, :cond_1

    .line 410
    :goto_1
    return-void

    .line 281
    .end local v1    # "bsBtn":Landroid/widget/ImageView;
    .end local v2    # "empty":Landroid/widget/TextView;
    :cond_0
    new-instance v3, Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/vkontakte/android/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 282
    .local v3, "gv":Landroid/widget/GridView;
    const/high16 v5, 0x42340000    # 45.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 283
    invoke-virtual {v3, v9}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 284
    new-instance v0, Lcom/vkontakte/android/EmojiView$EmojiGridAdapter;

    sget-object v5, Lcom/vkontakte/android/EmojiView;->data:[[J

    aget-object v5, v5, v4

    invoke-direct {v0, p0, v5}, Lcom/vkontakte/android/EmojiView$EmojiGridAdapter;-><init>(Lcom/vkontakte/android/EmojiView;[J)V

    .line 285
    .local v0, "adapter":Lcom/vkontakte/android/EmojiView$EmojiGridAdapter;
    invoke-virtual {v3, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 286
    iget-object v5, p0, Lcom/vkontakte/android/EmojiView;->adapters:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v5, p0, Lcom/vkontakte/android/EmojiView;->views:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 365
    .end local v0    # "adapter":Lcom/vkontakte/android/EmojiView$EmojiGridAdapter;
    .end local v3    # "gv":Landroid/widget/GridView;
    .restart local v1    # "bsBtn":Landroid/widget/ImageView;
    .restart local v2    # "empty":Landroid/widget/TextView;
    :cond_1
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/EmojiView;->stickersWrap:Landroid/widget/LinearLayout;

    .line 366
    iget-object v5, p0, Lcom/vkontakte/android/EmojiView;->stickersWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 367
    iget-object v5, p0, Lcom/vkontakte/android/EmojiView;->stickersWrap:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 368
    iget-object v5, p0, Lcom/vkontakte/android/EmojiView;->stickersWrap:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v9, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v5, v6}, Lcom/vkontakte/android/EmojiView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    new-instance v5, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/vkontakte/android/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/EmojiView;->stickersPager:Landroid/support/v4/view/ViewPager;

    .line 370
    iget-object v5, p0, Lcom/vkontakte/android/EmojiView;->stickersPager:Landroid/support/v4/view/ViewPager;

    new-instance v6, Lcom/vkontakte/android/EmojiView$StickersPagesAdapter;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/vkontakte/android/EmojiView$StickersPagesAdapter;-><init>(Lcom/vkontakte/android/EmojiView;Lcom/vkontakte/android/EmojiView$StickersPagesAdapter;)V

    iput-object v6, p0, Lcom/vkontakte/android/EmojiView;->stickersAdapter:Lcom/vkontakte/android/EmojiView$StickersPagesAdapter;

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 371
    iget-object v5, p0, Lcom/vkontakte/android/EmojiView;->stickersWrap:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/vkontakte/android/EmojiView;->stickersPager:Landroid/support/v4/view/ViewPager;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v9, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/EmojiView;->stickerPagerDots:Landroid/widget/LinearLayout;

    .line 373
    iget-object v5, p0, Lcom/vkontakte/android/EmojiView;->stickerPagerDots:Landroid/widget/LinearLayout;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 374
    iget-object v5, p0, Lcom/vkontakte/android/EmojiView;->stickersWrap:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/vkontakte/android/EmojiView;->stickerPagerDots:Landroid/widget/LinearLayout;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x41e80000    # 29.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    invoke-direct {v7, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    new-instance v5, Landroid/widget/HorizontalScrollView;

    invoke-virtual {p0}, Lcom/vkontakte/android/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/EmojiView;->bottomTabs:Landroid/widget/HorizontalScrollView;

    .line 377
    iget-object v5, p0, Lcom/vkontakte/android/EmojiView;->bottomTabs:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v5, v11}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 378
    iget-object v5, p0, Lcom/vkontakte/android/EmojiView;->bottomTabs:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v5, v10}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 379
    iget-object v5, p0, Lcom/vkontakte/android/EmojiView;->bottomTabs:Landroid/widget/HorizontalScrollView;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x42400000    # 48.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-direct {v6, v9, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v5, v6}, Lcom/vkontakte/android/EmojiView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/EmojiView;->btmTabsContent:Landroid/widget/LinearLayout;

    .line 381
    iget-object v5, p0, Lcom/vkontakte/android/EmojiView;->bottomTabs:Landroid/widget/HorizontalScrollView;

    iget-object v6, p0, Lcom/vkontakte/android/EmojiView;->btmTabsContent:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 382
    iget-object v5, p0, Lcom/vkontakte/android/EmojiView;->btmTabsContent:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 386
    iget-object v5, p0, Lcom/vkontakte/android/EmojiView;->stickersPager:Landroid/support/v4/view/ViewPager;

    new-instance v6, Lcom/vkontakte/android/EmojiView$7;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/EmojiView$7;-><init>(Lcom/vkontakte/android/EmojiView;)V

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    goto/16 :goto_1
.end method

.method private loadStickers(Ljava/util/List;II)V
    .locals 2
    .param p2, "offset"    # I
    .param p3, "tab"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 823
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ImageView;>;"
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/EmojiView$13;

    invoke-direct {v1, p0, p1, p3}, Lcom/vkontakte/android/EmojiView$13;-><init>(Lcom/vkontakte/android/EmojiView;Ljava/util/List;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 841
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 842
    return-void
.end method

.method private saveRecents()V
    .locals 10

    .prologue
    .line 758
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 759
    .local v5, "sdata":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/vkontakte/android/EmojiView;->useCounts:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 760
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .line 761
    .local v0, "i":I
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 766
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "emoji"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 767
    .local v4, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "recents"

    const-string v8, ","

    invoke-static {v8, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 768
    return-void

    .line 761
    .end local v4    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 762
    .local v1, "key":J
    const/16 v6, 0x32

    if-ge v0, v6, :cond_0

    .line 763
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/vkontakte/android/EmojiView;->useCounts:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\t"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setStickersBackground(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 571
    new-instance v0, Lcom/vkontakte/android/ui/ParallaxDrawable;

    invoke-direct {v0}, Lcom/vkontakte/android/ui/ParallaxDrawable;-><init>()V

    .line 572
    .local v0, "d":Lcom/vkontakte/android/ui/ParallaxDrawable;
    invoke-virtual {v0, p1}, Lcom/vkontakte/android/ui/ParallaxDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 573
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/EmojiView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 574
    return-void
.end method

.method private setTab(I)V
    .locals 5
    .param p1, "tab"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 535
    iput p1, p0, Lcom/vkontakte/android/EmojiView;->currentTab:I

    .line 536
    if-nez p1, :cond_0

    .line 537
    iget-object v1, p0, Lcom/vkontakte/android/EmojiView;->emojiTabsWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 538
    iget-object v1, p0, Lcom/vkontakte/android/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 539
    iget-object v1, p0, Lcom/vkontakte/android/EmojiView;->stickersWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 540
    const v1, -0x14110e

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/EmojiView;->setBackgroundColor(I)V

    .line 568
    :goto_0
    return-void

    .line 542
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/EmojiView;->stickers:Ljava/util/List;

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/EmojiView$StickerPackTab;

    iget-object v1, v1, Lcom/vkontakte/android/EmojiView$StickerPackTab;->stickers:Ljava/util/List;

    iput-object v1, p0, Lcom/vkontakte/android/EmojiView;->currentStickerPack:Ljava/util/List;

    .line 543
    iget-object v1, p0, Lcom/vkontakte/android/EmojiView;->emojiTabsWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 544
    iget-object v1, p0, Lcom/vkontakte/android/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v4}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 545
    iget-object v1, p0, Lcom/vkontakte/android/EmojiView;->stickersWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 546
    iget-object v1, p0, Lcom/vkontakte/android/EmojiView;->stickersAdapter:Lcom/vkontakte/android/EmojiView$StickersPagesAdapter;

    invoke-virtual {v1}, Lcom/vkontakte/android/EmojiView$StickersPagesAdapter;->notifyDataSetChanged()V

    .line 547
    iget-object v1, p0, Lcom/vkontakte/android/EmojiView;->stickersPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/vkontakte/android/EmojiView;->stickersAdapter:Lcom/vkontakte/android/EmojiView$StickersPagesAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 548
    iget-object v1, p0, Lcom/vkontakte/android/EmojiView;->stickersPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 549
    invoke-direct {p0}, Lcom/vkontakte/android/EmojiView;->updateStickerPagerDots()V

    .line 550
    iget-object v1, p0, Lcom/vkontakte/android/EmojiView;->stickers:Ljava/util/List;

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/EmojiView$StickerPackTab;

    iget-object v0, v1, Lcom/vkontakte/android/EmojiView$StickerPackTab;->background:Ljava/lang/String;

    .line 551
    .local v0, "bg":Ljava/lang/String;
    invoke-static {v0}, Lcom/vkontakte/android/ImageCache;->isInTopCache(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 552
    invoke-static {v0}, Lcom/vkontakte/android/ImageCache;->getFromTop(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vkontakte/android/EmojiView;->setStickersBackground(Landroid/graphics/Bitmap;)V

    .line 556
    :goto_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vkontakte/android/EmojiView$10;

    invoke-direct {v2, p0, v0, p1}, Lcom/vkontakte/android/EmojiView$10;-><init>(Lcom/vkontakte/android/EmojiView;Ljava/lang/String;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 566
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 554
    :cond_1
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/EmojiView;->setBackgroundColor(I)V

    goto :goto_1
.end method

.method private showStickersDetails(Lcom/vkontakte/android/data/StickerPack;)V
    .locals 1
    .param p1, "pck"    # Lcom/vkontakte/android/data/StickerPack;

    .prologue
    .line 413
    new-instance v0, Lcom/vkontakte/android/EmojiView$8;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/EmojiView$8;-><init>(Lcom/vkontakte/android/EmojiView;Lcom/vkontakte/android/data/StickerPack;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/EmojiView;->post(Ljava/lang/Runnable;)Z

    .line 430
    return-void
.end method

.method private updateRecents()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 735
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 736
    .local v4, "r":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/EmojiView$RecentItem;>;"
    iget-object v5, p0, Lcom/vkontakte/android/EmojiView;->useCounts:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 737
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 743
    new-instance v5, Lcom/vkontakte/android/EmojiView$12;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/EmojiView$12;-><init>(Lcom/vkontakte/android/EmojiView;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 749
    sget-object v5, Lcom/vkontakte/android/EmojiView;->data:[[J

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [J

    aput-object v6, v5, v9

    .line 750
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v0, v5, :cond_1

    .line 753
    iget-object v5, p0, Lcom/vkontakte/android/EmojiView;->adapters:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/EmojiView$EmojiGridAdapter;

    sget-object v6, Lcom/vkontakte/android/EmojiView;->data:[[J

    aget-object v6, v6, v9

    iput-object v6, v5, Lcom/vkontakte/android/EmojiView$EmojiGridAdapter;->data:[J

    .line 754
    iget-object v5, p0, Lcom/vkontakte/android/EmojiView;->adapters:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/EmojiView$EmojiGridAdapter;

    invoke-virtual {v5}, Lcom/vkontakte/android/EmojiView$EmojiGridAdapter;->notifyDataSetChanged()V

    .line 755
    return-void

    .line 737
    .end local v0    # "i":I
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 738
    .local v1, "key":J
    new-instance v0, Lcom/vkontakte/android/EmojiView$RecentItem;

    const/4 v5, 0x0

    invoke-direct {v0, v5}, Lcom/vkontakte/android/EmojiView$RecentItem;-><init>(Lcom/vkontakte/android/EmojiView$RecentItem;)V

    .line 739
    .local v0, "i":Lcom/vkontakte/android/EmojiView$RecentItem;
    iput-wide v1, v0, Lcom/vkontakte/android/EmojiView$RecentItem;->code:J

    .line 740
    iget-object v5, p0, Lcom/vkontakte/android/EmojiView;->useCounts:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iput v5, v0, Lcom/vkontakte/android/EmojiView$RecentItem;->count:F

    .line 741
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 751
    .end local v1    # "key":J
    .local v0, "i":I
    :cond_1
    sget-object v5, Lcom/vkontakte/android/EmojiView;->data:[[J

    aget-object v6, v5, v9

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/EmojiView$RecentItem;

    iget-wide v7, v5, Lcom/vkontakte/android/EmojiView$RecentItem;->code:J

    aput-wide v7, v6, v0

    .line 750
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private updateStickerPagerDots()V
    .locals 7

    .prologue
    const/high16 v6, 0x40e00000    # 7.0f

    .line 577
    iget-object v5, p0, Lcom/vkontakte/android/EmojiView;->currentStickerPack:Ljava/util/List;

    if-nez v5, :cond_1

    .line 593
    :cond_0
    return-void

    .line 578
    :cond_1
    iget-object v5, p0, Lcom/vkontakte/android/EmojiView;->stickerPagerDots:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 579
    iget-object v5, p0, Lcom/vkontakte/android/EmojiView;->stickersAdapter:Lcom/vkontakte/android/EmojiView$StickersPagesAdapter;

    invoke-virtual {v5}, Lcom/vkontakte/android/EmojiView$StickersPagesAdapter;->getCount()I

    move-result v4

    .line 580
    .local v4, "pages":I
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 581
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 582
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 583
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/vkontakte/android/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 584
    .local v1, "dot":Landroid/view/View;
    invoke-virtual {p0}, Lcom/vkontakte/android/EmojiView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020260

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 585
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    const/16 v6, 0x14

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    .line 588
    invoke-direct {v5, v6}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    .line 585
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 589
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 590
    iget-object v5, p0, Lcom/vkontakte/android/EmojiView;->stickersPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v5

    if-ne v2, v5, :cond_2

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v1, v5}, Landroid/view/View;->setSelected(Z)V

    .line 591
    iget-object v5, p0, Lcom/vkontakte/android/EmojiView;->stickerPagerDots:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 582
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 590
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 585
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public loadRecents()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 771
    invoke-virtual {p0}, Lcom/vkontakte/android/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "emoji"

    invoke-virtual {v8, v9, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "recents"

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 772
    .local v4, "r":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    const-string v8, "\t"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 773
    const-string v8, ","

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 774
    .local v6, "sp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 775
    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 776
    sget-object v8, Lcom/vkontakte/android/EmojiView;->data:[[J

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [J

    aput-object v9, v8, v12

    .line 777
    iget-object v8, p0, Lcom/vkontakte/android/EmojiView;->useCounts:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 778
    const/4 v3, 0x0

    .line 779
    .local v3, "i":I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_1

    .line 787
    iget-object v8, p0, Lcom/vkontakte/android/EmojiView;->adapters:Ljava/util/ArrayList;

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/EmojiView$EmojiGridAdapter;

    sget-object v9, Lcom/vkontakte/android/EmojiView;->data:[[J

    aget-object v9, v9, v12

    iput-object v9, v8, Lcom/vkontakte/android/EmojiView$EmojiGridAdapter;->data:[J

    .line 788
    iget-object v8, p0, Lcom/vkontakte/android/EmojiView;->adapters:Ljava/util/ArrayList;

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/EmojiView$EmojiGridAdapter;

    invoke-virtual {v8}, Lcom/vkontakte/android/EmojiView$EmojiGridAdapter;->notifyDataSetChanged()V

    .line 790
    .end local v3    # "i":I
    .end local v6    # "sp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-void

    .line 779
    .restart local v3    # "i":I
    .restart local v6    # "sp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 780
    .local v5, "s":Ljava/lang/String;
    const-string v9, "\t"

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 781
    .local v7, "ss":[Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 782
    .local v0, "code":J
    aget-object v9, v7, v12

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 783
    .local v2, "count":F
    iget-object v9, p0, Lcom/vkontakte/android/EmojiView;->useCounts:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    sget-object v9, Lcom/vkontakte/android/EmojiView;->data:[[J

    aget-object v9, v9, v12

    aput-wide v0, v9, v3

    .line 785
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 3
    .param p1, "wms"    # I
    .param p2, "hms"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 803
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 804
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 807
    iget-boolean v2, p0, Lcom/vkontakte/android/EmojiView;->showStickers:Z

    if-nez v2, :cond_0

    .line 816
    :goto_0
    return-void

    .line 808
    :cond_0
    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    sub-int v2, p2, v2

    const/high16 v3, 0x41e80000    # 29.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    sub-int v0, v2, v3

    .line 809
    .local v0, "avail":I
    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    if-le v0, v2, :cond_1

    const/4 v2, 0x2

    :goto_1
    iput v2, p0, Lcom/vkontakte/android/EmojiView;->stickerRows:I

    .line 810
    iget v2, p0, Lcom/vkontakte/android/EmojiView;->stickerRows:I

    div-int v2, v0, v2

    div-int/lit8 v3, p1, 0x4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 811
    .local v1, "rowH":I
    int-to-float v2, p1

    int-to-float v3, v1

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    const/4 v3, 0x6

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/vkontakte/android/EmojiView;->stickersPerRow:I

    .line 812
    iput v1, p0, Lcom/vkontakte/android/EmojiView;->stickerSize:I

    .line 813
    iget-object v2, p0, Lcom/vkontakte/android/EmojiView;->stickersAdapter:Lcom/vkontakte/android/EmojiView$StickersPagesAdapter;

    invoke-virtual {v2}, Lcom/vkontakte/android/EmojiView$StickersPagesAdapter;->notifyDataSetChanged()V

    .line 814
    iget-object v2, p0, Lcom/vkontakte/android/EmojiView;->stickersPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/vkontakte/android/EmojiView;->stickersAdapter:Lcom/vkontakte/android/EmojiView$StickersPagesAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 815
    invoke-direct {p0}, Lcom/vkontakte/android/EmojiView;->updateStickerPagerDots()V

    goto :goto_0

    .line 809
    .end local v1    # "rowH":I
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public preloadStickersInfo(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 596
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 707
    :goto_0
    return-void

    .line 597
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/EmojiView;->stickersPreloading:Z

    .line 598
    new-instance v0, Lcom/vkontakte/android/api/StoreGetInventory;

    invoke-direct {v0, p1}, Lcom/vkontakte/android/api/StoreGetInventory;-><init>(Ljava/util/List;)V

    .line 599
    new-instance v1, Lcom/vkontakte/android/EmojiView$11;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/EmojiView$11;-><init>(Lcom/vkontakte/android/EmojiView;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/StoreGetInventory;->setCallback(Lcom/vkontakte/android/api/StoreGetInventory$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 706
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method public setListener(Lcom/vkontakte/android/EmojiView$Listener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkontakte/android/EmojiView$Listener;

    .prologue
    .line 819
    iput-object p1, p0, Lcom/vkontakte/android/EmojiView;->listener:Lcom/vkontakte/android/EmojiView$Listener;

    .line 820
    return-void
.end method

.method public updateStickers()V
    .locals 18

    .prologue
    .line 433
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/vkontakte/android/EmojiView;->setTab(I)V

    .line 434
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/EmojiView;->btmTabsContent:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 435
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/EmojiView;->stickers:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 436
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/EmojiView;->btmTabsContent:Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/EmojiView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-static {}, Lcom/vkontakte/android/data/Stickers;->hasNewStockItems()Z

    move-result v13

    if-eqz v13, :cond_2

    const v13, 0x7f02014f

    :goto_0
    invoke-virtual {v15, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/EmojiView;->storeClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v15}, Lcom/vkontakte/android/EmojiView;->createTabView(Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)Landroid/widget/ImageView;

    move-result-object v13

    invoke-virtual {v14, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 437
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/EmojiView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f020150

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/EmojiView;->tabClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/vkontakte/android/EmojiView;->createTabView(Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)Landroid/widget/ImageView;

    move-result-object v2

    .line 438
    .local v2, "emojiTab":Landroid/widget/ImageView;
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 439
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/EmojiView;->btmTabsContent:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 441
    invoke-static {}, Lcom/vkontakte/android/data/Stickers;->getActivePacks()Ljava/util/List;

    move-result-object v7

    .line 442
    .local v7, "packs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 443
    .local v5, "needStoreInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 444
    .local v11, "stickerTabs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ImageView;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_3

    .line 469
    invoke-static {}, Lcom/vkontakte/android/data/Stickers;->getPromotedPacks()Ljava/util/List;

    move-result-object v9

    .line 470
    .local v9, "promoted":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_7

    .line 490
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_1

    .line 491
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/vkontakte/android/EmojiView;->preloadStickersInfo(Ljava/util/List;)V

    .line 493
    :cond_1
    new-instance v13, Ljava/lang/Thread;

    new-instance v14, Lcom/vkontakte/android/EmojiView$9;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v11}, Lcom/vkontakte/android/EmojiView$9;-><init>(Lcom/vkontakte/android/EmojiView;Ljava/util/ArrayList;)V

    invoke-direct {v13, v14}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 512
    invoke-virtual {v13}, Ljava/lang/Thread;->start()V

    .line 514
    new-instance v3, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v3, v13}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 515
    .local v3, "filler":Landroid/view/View;
    const/4 v13, -0x1

    invoke-virtual {v3, v13}, Landroid/view/View;->setBackgroundColor(I)V

    .line 516
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/EmojiView;->btmTabsContent:Landroid/widget/LinearLayout;

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-direct/range {v14 .. v17}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v13, v3, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 518
    return-void

    .line 436
    .end local v2    # "emojiTab":Landroid/widget/ImageView;
    .end local v3    # "filler":Landroid/view/View;
    .end local v5    # "needStoreInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7    # "packs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "promoted":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v11    # "stickerTabs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ImageView;>;"
    :cond_2
    const v13, 0x7f02014e

    goto/16 :goto_0

    .line 444
    .restart local v2    # "emojiTab":Landroid/widget/ImageView;
    .restart local v5    # "needStoreInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v7    # "packs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v11    # "stickerTabs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ImageView;>;"
    :cond_3
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 445
    .local v6, "pack":I
    invoke-static {v6}, Lcom/vkontakte/android/data/Stickers;->getStickers(I)Ljava/util/List;

    move-result-object v4

    .line 446
    .local v4, "l":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/StickerAttachment;>;"
    new-instance v10, Lcom/vkontakte/android/EmojiView$StickerPackTab;

    const/4 v13, 0x0

    invoke-direct {v10, v13}, Lcom/vkontakte/android/EmojiView$StickerPackTab;-><init>(Lcom/vkontakte/android/EmojiView$StickerPackTab;)V

    .line 447
    .local v10, "stab":Lcom/vkontakte/android/EmojiView$StickerPackTab;
    iput v6, v10, Lcom/vkontakte/android/EmojiView$StickerPackTab;->id:I

    .line 448
    iput-object v4, v10, Lcom/vkontakte/android/EmojiView$StickerPackTab;->stickers:Ljava/util/List;

    .line 449
    invoke-static {v6}, Lcom/vkontakte/android/data/Stickers;->getPackBackgroundImage(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lcom/vkontakte/android/EmojiView$StickerPackTab;->background:Ljava/lang/String;

    .line 450
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/EmojiView;->stickers:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    invoke-static {v6}, Lcom/vkontakte/android/data/Stickers;->getPackState(I)I

    move-result v13

    const/4 v15, 0x4

    if-ne v13, v15, :cond_5

    const/4 v1, 0x1

    .line 452
    .local v1, "dl":Z
    :goto_3
    const/4 v15, 0x0

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/EmojiView;->tabClickListener:Landroid/view/View$OnClickListener;

    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v13}, Lcom/vkontakte/android/EmojiView;->createTabView(Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)Landroid/widget/ImageView;

    move-result-object v12

    .line 453
    .local v12, "tab":Landroid/widget/ImageView;
    sget-object v13, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 454
    const/high16 v13, 0x40e00000    # 7.0f

    invoke-static {v13}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    .line 455
    .local v8, "pad":I
    invoke-virtual {v12, v8, v8, v8, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 456
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 457
    if-nez v1, :cond_4

    .line 458
    new-instance v13, Landroid/graphics/ColorMatrixColorFilter;

    const/16 v15, 0x14

    new-array v15, v15, [F

    fill-array-data v15, :array_0

    .line 461
    invoke-direct {v13, v15}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    .line 458
    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 462
    sget-object v13, Lcom/vkontakte/android/EmojiView;->promotedPacks:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    sget-object v13, Lcom/vkontakte/android/EmojiView;->permFailedPacks:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/EmojiView;->tempFailedPacks:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 463
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/EmojiView;->btmTabsContent:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 466
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 451
    .end local v1    # "dl":Z
    .end local v8    # "pad":I
    .end local v12    # "tab":Landroid/widget/ImageView;
    :cond_5
    const/4 v1, 0x0

    goto :goto_3

    .line 452
    .restart local v1    # "dl":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/EmojiView;->promotedClickListener:Landroid/view/View$OnClickListener;

    goto :goto_4

    .line 470
    .end local v1    # "dl":Z
    .end local v4    # "l":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/StickerAttachment;>;"
    .end local v6    # "pack":I
    .end local v10    # "stab":Lcom/vkontakte/android/EmojiView$StickerPackTab;
    .restart local v9    # "promoted":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_7
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 471
    .restart local v6    # "pack":I
    sget-object v13, Lcom/vkontakte/android/EmojiView;->permFailedPacks:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/EmojiView;->tempFailedPacks:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 472
    new-instance v10, Lcom/vkontakte/android/EmojiView$StickerPackTab;

    const/4 v13, 0x0

    invoke-direct {v10, v13}, Lcom/vkontakte/android/EmojiView$StickerPackTab;-><init>(Lcom/vkontakte/android/EmojiView$StickerPackTab;)V

    .line 473
    .restart local v10    # "stab":Lcom/vkontakte/android/EmojiView$StickerPackTab;
    iput v6, v10, Lcom/vkontakte/android/EmojiView$StickerPackTab;->id:I

    .line 474
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/EmojiView;->stickers:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/EmojiView;->promotedClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v15}, Lcom/vkontakte/android/EmojiView;->createTabView(Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)Landroid/widget/ImageView;

    move-result-object v12

    .line 476
    .restart local v12    # "tab":Landroid/widget/ImageView;
    new-instance v13, Landroid/graphics/ColorMatrixColorFilter;

    const/16 v15, 0x14

    new-array v15, v15, [F

    fill-array-data v15, :array_1

    .line 479
    invoke-direct {v13, v15}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    .line 476
    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 480
    sget-object v13, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 481
    const/high16 v13, 0x40e00000    # 7.0f

    invoke-static {v13}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    .line 482
    .restart local v8    # "pad":I
    invoke-virtual {v12, v8, v8, v8, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 483
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/EmojiView;->btmTabsContent:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 484
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 485
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    sget-object v13, Lcom/vkontakte/android/EmojiView;->promotedPacks:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 487
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 458
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3eb33333    # 0.35f
        0x0
    .end array-data

    .line 476
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3eb33333    # 0.35f
        0x0
    .end array-data
.end method
