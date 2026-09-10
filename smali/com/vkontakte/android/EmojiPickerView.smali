.class public Lcom/vkontakte/android/EmojiPickerView;
.super Landroid/widget/FrameLayout;
.source "EmojiPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/EmojiPickerView$BGDrawable;,
        Lcom/vkontakte/android/EmojiPickerView$EmojiAdapter;,
        Lcom/vkontakte/android/EmojiPickerView$SelectionListener;,
        Lcom/vkontakte/android/EmojiPickerView$XImageView;
    }
.end annotation


# static fields
.field private static final ARROW_SIZE:I

.field private static final CODES:Ljava/lang/String; = "D83DDE0A,D83DDE03,D83DDE09,D83DDE06,D83DDE1C,D83DDE0B,D83DDE0D,D83DDE0E,D83DDE12,D83DDE0F,D83DDE14,D83DDE22,D83DDE2D,D83DDE29,D83DDE28,D83DDE10,D83DDE0C,D83DDE20,D83DDE21,D83DDE07,D83DDE30,D83DDE33,D83DDE32,D83DDE37,D83DDE1A,D83DDE08,2764,D83DDC4D,D83DDC4E,261D,270C,D83DDC4C"

.field private static images:[Landroid/graphics/Bitmap;

.field public static smileys:[Ljava/lang/String;

.field public static textSmileys:[Ljava/lang/String;


# instance fields
.field private grid:Landroid/widget/GridView;

.field private highlight:Landroid/graphics/drawable/Drawable;

.field private itemSize:I

.field private leftPadding:I

.field private listener:Lcom/vkontakte/android/EmojiPickerView$SelectionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 36
    sput-object v3, Lcom/vkontakte/android/EmojiPickerView;->smileys:[Ljava/lang/String;

    .line 37
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ":-)"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ":-D"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ";-)"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "xD"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, ";-P"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, ":-p"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "8)"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "B)"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 38
    const-string v2, ":-("

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, ":]"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "3("

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, ":\'("

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, ":_("

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, ":(("

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, ":o"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, ":|"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 39
    const-string v2, "3)"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, ">("

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, ">(("

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "O:)"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, ";o"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "8o"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "8|"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, ":X"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 40
    const-string v2, ":*"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "}:)"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "<3"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, ":like:"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, ":dislike:"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, ":up:"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, ":v:"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, ":ok:"

    aput-object v2, v0, v1

    .line 37
    sput-object v0, Lcom/vkontakte/android/EmojiPickerView;->textSmileys:[Ljava/lang/String;

    .line 41
    sput-object v3, Lcom/vkontakte/android/EmojiPickerView;->images:[Landroid/graphics/Bitmap;

    .line 47
    const/high16 v0, 0x40e00000    # 7.0f

    invoke-static {v0}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    sput v0, Lcom/vkontakte/android/EmojiPickerView;->ARROW_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-direct {p0}, Lcom/vkontakte/android/EmojiPickerView;->init()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    invoke-direct {p0}, Lcom/vkontakte/android/EmojiPickerView;->init()V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    invoke-direct {p0}, Lcom/vkontakte/android/EmojiPickerView;->init()V

    .line 62
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/EmojiPickerView;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/vkontakte/android/EmojiPickerView;->itemSize:I

    return v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/EmojiPickerView;)Lcom/vkontakte/android/EmojiPickerView$SelectionListener;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPickerView;->listener:Lcom/vkontakte/android/EmojiPickerView$SelectionListener;

    return-object v0
.end method

.method static synthetic access$2()[Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/vkontakte/android/EmojiPickerView;->images:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/vkontakte/android/EmojiPickerView;->ARROW_SIZE:I

    return v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/EmojiPickerView;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/vkontakte/android/EmojiPickerView;->leftPadding:I

    return v0
.end method

.method public static final fillSmileys()V
    .locals 11

    .prologue
    const/4 v6, 0x0

    .line 65
    sget-object v5, Lcom/vkontakte/android/EmojiPickerView;->smileys:[Ljava/lang/String;

    if-nez v5, :cond_0

    .line 66
    const-string v5, "D83DDE0A,D83DDE03,D83DDE09,D83DDE06,D83DDE1C,D83DDE0B,D83DDE0D,D83DDE0E,D83DDE12,D83DDE0F,D83DDE14,D83DDE22,D83DDE2D,D83DDE29,D83DDE28,D83DDE10,D83DDE0C,D83DDE20,D83DDE21,D83DDE07,D83DDE30,D83DDE33,D83DDE32,D83DDE37,D83DDE1A,D83DDE08,2764,D83DDC4D,D83DDC4E,261D,270C,D83DDC4C"

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "codes":[Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v4, "sm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v7, v2

    move v5, v6

    :goto_0
    if-lt v5, v7, :cond_1

    .line 79
    new-array v5, v6, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    sput-object v5, Lcom/vkontakte/android/EmojiPickerView;->smileys:[Ljava/lang/String;

    .line 81
    :cond_0
    return-void

    .line 68
    :cond_1
    aget-object v1, v2, v5

    .line 69
    .local v1, "code":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    rem-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_2

    .line 70
    const-string v8, "vk"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "incorrect char code: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 73
    :cond_2
    const-string v0, ""

    .line 74
    .local v0, "ch":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v3, v8, :cond_3

    .line 77
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 75
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v9, v3, 0x4

    invoke-virtual {v1, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    add-int/lit8 v3, v3, 0x4

    goto :goto_2
.end method

.method private init()V
    .locals 17

    .prologue
    .line 84
    invoke-static {}, Lcom/vkontakte/android/EmojiPickerView;->fillSmileys()V

    .line 85
    sget-object v12, Lcom/vkontakte/android/EmojiPickerView;->images:[Landroid/graphics/Bitmap;

    if-nez v12, :cond_1

    .line 87
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/EmojiPickerView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    const-string v13, "emoji_sendable.png"

    invoke-virtual {v12, v13}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    .line 88
    .local v10, "stream":Ljava/io/InputStream;
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 89
    .local v5, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v11, 0x0

    .line 90
    .local v11, "subsampled":Z
    sget v12, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v13, 0x3f800000    # 1.0f

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_0

    .line 91
    const/4 v12, 0x2

    iput v12, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 92
    const/4 v11, 0x1

    .line 94
    :cond_0
    const/4 v12, 0x0

    invoke-static {v10, v12, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 95
    .local v1, "bigBmp":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    div-int v4, v12, v13

    .line 96
    .local v4, "num":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 97
    .local v8, "size":I
    if-eqz v11, :cond_3

    int-to-float v12, v8

    sget v13, Lcom/vkontakte/android/Global;->displayDensity:F

    div-float/2addr v12, v13

    :goto_0
    float-to-int v7, v12

    .line 98
    .local v7, "rsize":I
    new-array v12, v4, [Landroid/graphics/Bitmap;

    sput-object v12, Lcom/vkontakte/android/EmojiPickerView;->images:[Landroid/graphics/Bitmap;

    .line 99
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 100
    .local v6, "paint":Landroid/graphics/Paint;
    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setFilterBitmap(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-lt v3, v4, :cond_4

    .line 114
    .end local v1    # "bigBmp":Landroid/graphics/Bitmap;
    .end local v3    # "i":I
    .end local v4    # "num":I
    .end local v5    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "paint":Landroid/graphics/Paint;
    .end local v7    # "rsize":I
    .end local v8    # "size":I
    .end local v10    # "stream":Ljava/io/InputStream;
    .end local v11    # "subsampled":Z
    :cond_1
    :goto_2
    new-instance v12, Lcom/vkontakte/android/EmojiPickerView$BGDrawable;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13}, Lcom/vkontakte/android/EmojiPickerView$BGDrawable;-><init>(Lcom/vkontakte/android/EmojiPickerView;Lcom/vkontakte/android/EmojiPickerView$BGDrawable;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/vkontakte/android/EmojiPickerView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/EmojiPickerView;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f03004d

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/vkontakte/android/EmojiPickerView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/GridView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/vkontakte/android/EmojiPickerView;->grid:Landroid/widget/GridView;

    .line 116
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/EmojiPickerView;->grid:Landroid/widget/GridView;

    new-instance v13, Lcom/vkontakte/android/EmojiPickerView$EmojiAdapter;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lcom/vkontakte/android/EmojiPickerView$EmojiAdapter;-><init>(Lcom/vkontakte/android/EmojiPickerView;Lcom/vkontakte/android/EmojiPickerView$EmojiAdapter;)V

    invoke-virtual {v12, v13}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 117
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/EmojiPickerView;->grid:Landroid/widget/GridView;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 120
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/EmojiPickerView;->grid:Landroid/widget/GridView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 121
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/EmojiPickerView;->grid:Landroid/widget/GridView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 122
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/EmojiPickerView;->grid:Landroid/widget/GridView;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/GridView;->setVerticalFadingEdgeEnabled(Z)V

    .line 123
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/EmojiPickerView;->grid:Landroid/widget/GridView;

    const/high16 v13, 0x41200000    # 10.0f

    invoke-static {v13}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/GridView;->setFadingEdgeLength(I)V

    .line 124
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/EmojiPickerView;->grid:Landroid/widget/GridView;

    check-cast v12, Lcom/vkontakte/android/ui/XGridView;

    const/4 v13, 0x1

    iput-boolean v13, v12, Lcom/vkontakte/android/ui/XGridView;->overrideScroll:Z

    .line 126
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/EmojiPickerView;->grid:Landroid/widget/GridView;

    new-instance v13, Landroid/graphics/drawable/ColorDrawable;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v12, v13}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 128
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/EmojiPickerView;->grid:Landroid/widget/GridView;

    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-direct {v13, v14, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/vkontakte/android/EmojiPickerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/EmojiPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f020084

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/StateListDrawable;

    .line 131
    .local v9, "sl":Landroid/graphics/drawable/StateListDrawable;
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0xb

    if-lt v12, v13, :cond_2

    .line 132
    const/16 v12, 0xfa

    invoke-virtual {v9, v12}, Landroid/graphics/drawable/StateListDrawable;->setExitFadeDuration(I)V

    .line 133
    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Landroid/graphics/drawable/StateListDrawable;->setEnterFadeDuration(I)V

    .line 135
    :cond_2
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/vkontakte/android/EmojiPickerView;->highlight:Landroid/graphics/drawable/Drawable;

    .line 138
    const/high16 v12, 0x41200000    # 10.0f

    invoke-static {v12}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v12

    sget v13, Lcom/vkontakte/android/EmojiPickerView;->ARROW_SIZE:I

    const/high16 v14, 0x41200000    # 10.0f

    invoke-static {v14}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v14

    const/high16 v15, 0x41200000    # 10.0f

    invoke-static {v15}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14, v15}, Lcom/vkontakte/android/EmojiPickerView;->setPadding(IIII)V

    .line 139
    return-void

    .line 97
    .end local v9    # "sl":Landroid/graphics/drawable/StateListDrawable;
    .restart local v1    # "bigBmp":Landroid/graphics/Bitmap;
    .restart local v4    # "num":I
    .restart local v5    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local v8    # "size":I
    .restart local v10    # "stream":Ljava/io/InputStream;
    .restart local v11    # "subsampled":Z
    :cond_3
    int-to-float v12, v8

    :try_start_1
    sget v13, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    mul-float/2addr v12, v13

    goto/16 :goto_0

    .line 103
    .restart local v3    # "i":I
    .restart local v6    # "paint":Landroid/graphics/Paint;
    .restart local v7    # "rsize":I
    :cond_4
    if-eq v7, v8, :cond_5

    .line 104
    sget-object v12, Lcom/vkontakte/android/EmojiPickerView;->images:[Landroid/graphics/Bitmap;

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v7, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    aput-object v13, v12, v3

    .line 105
    new-instance v2, Landroid/graphics/Canvas;

    sget-object v12, Lcom/vkontakte/android/EmojiPickerView;->images:[Landroid/graphics/Bitmap;

    aget-object v12, v12, v3

    invoke-direct {v2, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 106
    .local v2, "c":Landroid/graphics/Canvas;
    new-instance v12, Landroid/graphics/Rect;

    mul-int v13, v3, v8

    const/4 v14, 0x0

    mul-int v15, v3, v8

    add-int/2addr v15, v8

    invoke-direct {v12, v13, v14, v15, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v13, Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v1, v12, v13, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 102
    .end local v2    # "c":Landroid/graphics/Canvas;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 108
    :cond_5
    sget-object v12, Lcom/vkontakte/android/EmojiPickerView;->images:[Landroid/graphics/Bitmap;

    mul-int v13, v3, v8

    const/4 v14, 0x0

    invoke-static {v1, v13, v14, v8, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v13

    aput-object v13, v12, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 111
    .end local v1    # "bigBmp":Landroid/graphics/Bitmap;
    .end local v3    # "i":I
    .end local v4    # "num":I
    .end local v5    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "paint":Landroid/graphics/Paint;
    .end local v7    # "rsize":I
    .end local v8    # "size":I
    .end local v10    # "stream":Ljava/io/InputStream;
    .end local v11    # "subsampled":Z
    :catch_0
    move-exception v12

    goto/16 :goto_2
.end method


# virtual methods
.method public setItemSize(I)V
    .locals 1
    .param p1, "s"    # I

    .prologue
    .line 147
    iput p1, p0, Lcom/vkontakte/android/EmojiPickerView;->itemSize:I

    .line 148
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPickerView;->grid:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 149
    return-void
.end method

.method public setLeftPadding(I)V
    .locals 4
    .param p1, "p"    # I

    .prologue
    const/high16 v3, 0x41200000    # 10.0f

    .line 142
    iput p1, p0, Lcom/vkontakte/android/EmojiPickerView;->leftPadding:I

    .line 143
    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    add-int/2addr v0, p1

    sget v1, Lcom/vkontakte/android/EmojiPickerView;->ARROW_SIZE:I

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/vkontakte/android/EmojiPickerView;->setPadding(IIII)V

    .line 144
    return-void
.end method

.method public setSelectionListener(Lcom/vkontakte/android/EmojiPickerView$SelectionListener;)V
    .locals 0
    .param p1, "sl"    # Lcom/vkontakte/android/EmojiPickerView$SelectionListener;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/vkontakte/android/EmojiPickerView;->listener:Lcom/vkontakte/android/EmojiPickerView$SelectionListener;

    .line 153
    return-void
.end method
