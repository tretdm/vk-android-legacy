.class public Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;
.super Landroid/widget/HorizontalScrollView;
.source "PagerSlidingTabStrip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$BadgeTabProvider;,
        Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$IconTabProvider;,
        Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;,
        Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$SavedState;
    }
.end annotation


# static fields
.field private static final ATTRS:[I


# instance fields
.field private checkedTabWidths:Z

.field private currentPosition:I

.field private currentPositionOffset:F

.field private defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field public delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private dividerColor:I

.field private dividerPadding:I

.field private dividerPaint:Landroid/graphics/Paint;

.field private dividerWidth:I

.field private expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private indicatorColor:I

.field private indicatorHeight:I

.field private lastScrollX:I

.field private locale:Ljava/util/Locale;

.field public final pageListener:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;

.field private pager:Landroid/support/v4/view/ViewPager;

.field private rectPaint:Landroid/graphics/Paint;

.field private scrollOffset:I

.field private shouldExpand:Z

.field private tabBackgroundResId:I

.field private tabCount:I

.field private tabPadding:I

.field private tabTextColor:I

.field private tabTextSize:I

.field private tabTypeface:Landroid/graphics/Typeface;

.field private tabTypefaceStyle:I

.field private tabsContainer:Landroid/widget/LinearLayout;

.field private textAllCaps:Z

.field private underlineColor:I

.field private underlineHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->ATTRS:[I

    .line 62
    return-void

    .line 59
    nop

    :array_0
    .array-data 4
        0x1010095
        0x1010098
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const v3, -0x99999a

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 118
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    new-instance v2, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;

    invoke-direct {v2, p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;-><init>(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;)V

    iput-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->pageListener:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;

    .line 76
    iput v5, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->currentPosition:I

    .line 77
    iput v7, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->currentPositionOffset:F

    .line 82
    iput-boolean v5, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->checkedTabWidths:Z

    .line 84
    iput v3, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->indicatorColor:I

    .line 85
    const/high16 v2, 0x1a000000

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->underlineColor:I

    .line 86
    const/high16 v2, 0x1a000000

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->dividerColor:I

    .line 88
    iput-boolean v5, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->shouldExpand:Z

    .line 89
    iput-boolean v4, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->textAllCaps:Z

    .line 91
    const/16 v2, 0x34

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->scrollOffset:I

    .line 92
    const/16 v2, 0x8

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->indicatorHeight:I

    .line 93
    const/4 v2, 0x2

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->underlineHeight:I

    .line 94
    const/16 v2, 0xc

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->dividerPadding:I

    .line 95
    const/16 v2, 0x18

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabPadding:I

    .line 96
    iput v4, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->dividerWidth:I

    .line 98
    const/16 v2, 0xc

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabTextSize:I

    .line 99
    iput v3, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabTextColor:I

    .line 100
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabTypeface:Landroid/graphics/Typeface;

    .line 101
    iput v4, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabTypefaceStyle:I

    .line 103
    iput v5, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->lastScrollX:I

    .line 105
    const v2, 0x7f02008a

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabBackgroundResId:I

    .line 120
    invoke-virtual {p0, v4}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setFillViewport(Z)V

    .line 121
    invoke-virtual {p0, v5}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setWillNotDraw(Z)V

    .line 123
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    .line 124
    iget-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 125
    iget-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    iget-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->addView(Landroid/view/View;)V

    .line 128
    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 130
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->scrollOffset:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->scrollOffset:I

    .line 131
    iget v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->indicatorHeight:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->indicatorHeight:I

    .line 132
    iget v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->underlineHeight:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->underlineHeight:I

    .line 133
    iget v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->dividerPadding:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->dividerPadding:I

    .line 134
    iget v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabPadding:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabPadding:I

    .line 135
    iget v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->dividerWidth:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->dividerWidth:I

    .line 136
    iget v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabTextSize:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabTextSize:I

    .line 140
    sget-object v2, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->ATTRS:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 142
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabTextSize:I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabTextSize:I

    .line 143
    iget v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabTextColor:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabTextColor:I

    .line 145
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 149
    sget-object v2, Lcom/vkontakte/android/R$styleable;->PagerSlidingTabStrip:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 151
    iget v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->indicatorColor:I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->indicatorColor:I

    .line 152
    iget v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->underlineColor:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->underlineColor:I

    .line 153
    const/4 v2, 0x2

    iget v3, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->dividerColor:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->dividerColor:I

    .line 154
    const/4 v2, 0x3

    iget v3, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->indicatorHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->indicatorHeight:I

    .line 155
    const/4 v2, 0x4

    iget v3, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->underlineHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->underlineHeight:I

    .line 156
    const/4 v2, 0x5

    iget v3, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->dividerPadding:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->dividerPadding:I

    .line 157
    const/4 v2, 0x6

    iget v3, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabPadding:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabPadding:I

    .line 158
    const/16 v2, 0x8

    iget v3, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabBackgroundResId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabBackgroundResId:I

    .line 159
    const/16 v2, 0x9

    iget-boolean v3, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->shouldExpand:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->shouldExpand:Z

    .line 160
    const/4 v2, 0x7

    iget v3, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->scrollOffset:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->scrollOffset:I

    .line 161
    const/16 v2, 0xa

    iget-boolean v3, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->textAllCaps:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->textAllCaps:Z

    .line 163
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 165
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    .line 166
    iget-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 167
    iget-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 169
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    .line 170
    iget-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 171
    iget-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->dividerWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 173
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 174
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 176
    iget-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->locale:Ljava/util/Locale;

    if-nez v2, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->locale:Ljava/util/Locale;

    .line 179
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;I)V
    .locals 0

    .prologue
    .line 76
    iput p1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->currentPosition:I

    return-void
.end method

.method static synthetic access$1(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;F)V
    .locals 0

    .prologue
    .line 77
    iput p1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->currentPositionOffset:F

    return-void
.end method

.method static synthetic access$2(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;II)V
    .locals 0

    .prologue
    .line 434
    invoke-direct {p0, p1, p2}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->scrollToChild(II)V

    return-void
.end method

.method static synthetic access$4(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$5(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;)I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->currentPosition:I

    return v0
.end method

.method static synthetic access$6(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;)I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabPadding:I

    return v0
.end method

.method static synthetic access$7(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    return-object v0
.end method

.method private addBadgeTextTab(ILjava/lang/CharSequence;Ljava/lang/String;)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "badge"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x11

    const/4 v4, 0x0

    .line 261
    if-nez p3, :cond_0

    .line 262
    invoke-direct {p0, p1, p2}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->addTextTab(ILjava/lang/CharSequence;)V

    .line 295
    :goto_0
    return-void

    .line 266
    :cond_0
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 267
    .local v2, "tab":Landroid/widget/TextView;
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 269
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 270
    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    .line 271
    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-virtual {v2, v4, v4, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 273
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 274
    .local v0, "bv":Landroid/widget/TextView;
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 276
    const/high16 v3, 0x41500000    # 13.0f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 277
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 278
    const v3, 0x7f02008d

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 280
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 281
    .local v1, "ll":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 282
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 283
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 284
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 286
    new-instance v3, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$3;

    invoke-direct {v3, p0, p1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$3;-><init>(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;I)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    iget-object v3, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private addIconTab(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "resId"    # I

    .prologue
    .line 299
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 300
    .local v0, "tab":Landroid/widget/ImageButton;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 301
    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 303
    new-instance v1, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$4;

    invoke-direct {v1, p0, p1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$4;-><init>(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    iget-object v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 312
    return-void
.end method

.method private addTextTab(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 243
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 244
    .local v0, "tab":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 246
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 247
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 249
    new-instance v1, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$2;

    invoke-direct {v1, p0, p1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$2;-><init>(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 258
    return-void
.end method

.method private scrollToChild(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 436
    iget v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabCount:I

    if-nez v1, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    iget-object v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int v0, v1, p2

    .line 442
    .local v0, "newScrollX":I
    if-gtz p1, :cond_2

    if-lez p2, :cond_3

    .line 443
    :cond_2
    iget v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->scrollOffset:I

    sub-int/2addr v0, v1

    .line 446
    :cond_3
    iget v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->lastScrollX:I

    if-eq v0, v1, :cond_0

    .line 447
    iput v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->lastScrollX:I

    .line 448
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->scrollTo(II)V

    goto :goto_0
.end method

.method private setStyle(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "tab"    # Landroid/widget/TextView;

    .prologue
    .line 341
    const/4 v0, 0x0

    iget v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabTextSize:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 342
    iget-object v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabTypeface:Landroid/graphics/Typeface;

    iget v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabTypefaceStyle:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 343
    iget v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabTextColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 347
    iget-boolean v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->textAllCaps:Z

    if-eqz v0, :cond_0

    .line 348
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 349
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateExpanded()V
    .locals 2

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$5;

    invoke-direct {v1, p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$5;-><init>(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 421
    return-void
.end method

.method private updateTabStyles()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 316
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabCount:I

    if-lt v0, v3, :cond_0

    .line 338
    return-void

    .line 318
    :cond_0
    iget-object v3, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 320
    .local v2, "v":Landroid/view/View;
    iget-object v3, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    iget v3, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabBackgroundResId:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 322
    iget-boolean v3, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->shouldExpand:Z

    if-eqz v3, :cond_3

    .line 323
    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 324
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v6, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    :goto_1
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    move-object v1, v2

    .line 331
    check-cast v1, Landroid/widget/TextView;

    .line 332
    .local v1, "tab":Landroid/widget/TextView;
    invoke-direct {p0, v1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setStyle(Landroid/widget/TextView;)V

    .line 334
    .end local v1    # "tab":Landroid/widget/TextView;
    :cond_1
    instance-of v3, v2, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_2

    .line 335
    check-cast v2, Landroid/widget/LinearLayout;

    .end local v2    # "v":Landroid/view/View;
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setStyle(Landroid/widget/TextView;)V

    .line 316
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 326
    .restart local v2    # "v":Landroid/view/View;
    :cond_3
    iget v3, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabPadding:I

    iget v4, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabPadding:I

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1
.end method


# virtual methods
.method public getDividerColor()I
    .locals 1

    .prologue
    .line 586
    iget v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->dividerColor:I

    return v0
.end method

.method public getDividerPadding()I
    .locals 1

    .prologue
    .line 604
    iget v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->dividerPadding:I

    return v0
.end method

.method public getIndicatorColor()I
    .locals 1

    .prologue
    .line 549
    iget v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->indicatorColor:I

    return v0
.end method

.method public getIndicatorHeight()I
    .locals 1

    .prologue
    .line 558
    iget v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->indicatorHeight:I

    return v0
.end method

.method public getScrollOffset()I
    .locals 1

    .prologue
    .line 613
    iget v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->scrollOffset:I

    return v0
.end method

.method public getShouldExpand()Z
    .locals 1

    .prologue
    .line 624
    iget-boolean v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->shouldExpand:Z

    return v0
.end method

.method public getTabBackground()I
    .locals 1

    .prologue
    .line 670
    iget v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabBackgroundResId:I

    return v0
.end method

.method public getTabPaddingLeftRight()I
    .locals 1

    .prologue
    .line 679
    iget v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabPadding:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 655
    iget v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabTextColor:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    .line 641
    iget v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabTextSize:I

    return v0
.end method

.method public getUnderlineColor()I
    .locals 1

    .prologue
    .line 572
    iget v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->underlineColor:I

    return v0
.end method

.method public getUnderlineHeight()I
    .locals 1

    .prologue
    .line 595
    iget v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->underlineHeight:I

    return v0
.end method

.method public isTextAllCaps()Z
    .locals 1

    .prologue
    .line 628
    iget-boolean v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->textAllCaps:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 3

    .prologue
    .line 199
    iget-object v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 201
    iget-object v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabCount:I

    .line 203
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabCount:I

    if-lt v0, v1, :cond_0

    .line 215
    invoke-direct {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->updateTabStyles()V

    .line 217
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->checkedTabWidths:Z

    .line 219
    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$1;

    invoke-direct {v2, p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$1;-><init>(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 237
    invoke-direct {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->updateExpanded()V

    .line 239
    return-void

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    instance-of v1, v1, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$IconTabProvider;

    if-eqz v1, :cond_1

    .line 206
    iget-object v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    check-cast v1, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$IconTabProvider;

    invoke-interface {v1, v0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$IconTabProvider;->getPageIconResId(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->addIconTab(II)V

    .line 203
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    :cond_1
    iget-object v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    instance-of v1, v1, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$BadgeTabProvider;

    if-eqz v1, :cond_2

    .line 208
    iget-object v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    check-cast v1, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$BadgeTabProvider;

    invoke-interface {v1, v0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$BadgeTabProvider;->getPageBadgeValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v2, v1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->addBadgeTextTab(ILjava/lang/CharSequence;Ljava/lang/String;)V

    goto :goto_1

    .line 210
    :cond_2
    iget-object v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->addTextTab(ILjava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 455
    invoke-super/range {p0 .. p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 457
    invoke-virtual/range {p0 .. p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabCount:I

    if-nez v1, :cond_1

    .line 497
    :cond_0
    return-void

    .line 461
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->getHeight()I

    move-result v12

    .line 465
    .local v12, "height":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->indicatorColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 468
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->currentPosition:I

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 469
    .local v11, "currentTab":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v2, v1

    .line 470
    .local v2, "lineLeft":F
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v4, v1

    .line 473
    .local v4, "lineRight":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->currentPositionOffset:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->currentPosition:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_2

    .line 475
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->currentPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 476
    .local v14, "nextTab":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v15, v1

    .line 477
    .local v15, "nextTabLeft":F
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v0, v1

    move/from16 v16, v0

    .line 479
    .local v16, "nextTabRight":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->currentPositionOffset:F

    mul-float/2addr v1, v15

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->currentPositionOffset:F

    sub-float/2addr v3, v5

    mul-float/2addr v3, v2

    add-float v2, v1, v3

    .line 480
    move-object/from16 v0, p0

    iget v1, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->currentPositionOffset:F

    mul-float v1, v1, v16

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->currentPositionOffset:F

    sub-float/2addr v3, v5

    mul-float/2addr v3, v4

    add-float v4, v1, v3

    .line 483
    .end local v14    # "nextTab":Landroid/view/View;
    .end local v15    # "nextTabLeft":F
    .end local v16    # "nextTabRight":F
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->indicatorHeight:I

    sub-int v1, v12, v1

    int-to-float v3, v1

    int-to-float v5, v12

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 487
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->underlineColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 488
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->underlineHeight:I

    sub-int v1, v12, v1

    int-to-float v7, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    int-to-float v8, v1

    int-to-float v9, v12

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 492
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->dividerColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 493
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v13, v1, :cond_0

    .line 494
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 495
    .local v17, "tab":Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v6, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->dividerPadding:I

    int-to-float v7, v1

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v8, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->dividerPadding:I

    sub-int v1, v12, v1

    int-to-float v9, v1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 493
    add-int/lit8 v13, v13, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 358
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 360
    iget-boolean v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->shouldExpand:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-nez v1, :cond_1

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->getMeasuredWidth()I

    move-result v0

    .line 365
    .local v0, "myWidth":I
    iget-object v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr v2, v0

    invoke-virtual {v1, v2, p2}, Landroid/widget/LinearLayout;->measure(II)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 684
    move-object v0, p1

    check-cast v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$SavedState;

    .line 685
    .local v0, "savedState":Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$SavedState;
    invoke-virtual {v0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 686
    iget v1, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$SavedState;->currentPosition:I

    iput v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->currentPosition:I

    .line 687
    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->requestLayout()V

    .line 688
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 692
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 693
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$SavedState;

    invoke-direct {v0, v1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 694
    .local v0, "savedState":Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$SavedState;
    iget v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->currentPosition:I

    iput v2, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$SavedState;->currentPosition:I

    .line 695
    return-object v0
.end method

.method public onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "ow"    # I
    .param p4, "oh"    # I

    .prologue
    .line 424
    iget-boolean v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->shouldExpand:Z

    if-nez v0, :cond_0

    .line 425
    new-instance v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$6;

    invoke-direct {v0, p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$6;-><init>(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;)V

    invoke-virtual {p0, v0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->post(Ljava/lang/Runnable;)Z

    .line 432
    :cond_0
    return-void
.end method

.method public setAllCaps(Z)V
    .locals 0
    .param p1, "textAllCaps"    # Z

    .prologue
    .line 632
    iput-boolean p1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->textAllCaps:Z

    .line 633
    return-void
.end method

.method public setDividerColor(I)V
    .locals 0
    .param p1, "dividerColor"    # I

    .prologue
    .line 576
    iput p1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->dividerColor:I

    .line 577
    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->invalidate()V

    .line 578
    return-void
.end method

.method public setDividerColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 581
    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->dividerColor:I

    .line 582
    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->invalidate()V

    .line 583
    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0
    .param p1, "dividerPaddingPx"    # I

    .prologue
    .line 599
    iput p1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->dividerPadding:I

    .line 600
    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->invalidate()V

    .line 601
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0
    .param p1, "indicatorColor"    # I

    .prologue
    .line 539
    iput p1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->indicatorColor:I

    .line 540
    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->invalidate()V

    .line 541
    return-void
.end method

.method public setIndicatorColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->indicatorColor:I

    .line 545
    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->invalidate()V

    .line 546
    return-void
.end method

.method public setIndicatorHeight(I)V
    .locals 0
    .param p1, "indicatorLineHeightPx"    # I

    .prologue
    .line 553
    iput p1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->indicatorHeight:I

    .line 554
    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->invalidate()V

    .line 555
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 195
    return-void
.end method

.method public setScrollOffset(I)V
    .locals 0
    .param p1, "scrollOffsetPx"    # I

    .prologue
    .line 608
    iput p1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->scrollOffset:I

    .line 609
    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->invalidate()V

    .line 610
    return-void
.end method

.method public setShouldExpand(Z)V
    .locals 3
    .param p1, "shouldExpand"    # Z

    .prologue
    const/4 v2, -0x1

    .line 617
    iput-boolean p1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->shouldExpand:Z

    .line 618
    iget-object v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 619
    invoke-direct {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->updateTabStyles()V

    .line 620
    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->requestLayout()V

    .line 621
    return-void
.end method

.method public setTabBackground(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 665
    iput p1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabBackgroundResId:I

    .line 666
    invoke-direct {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->updateTabStyles()V

    .line 667
    return-void
.end method

.method public setTabPaddingLeftRight(I)V
    .locals 0
    .param p1, "paddingPx"    # I

    .prologue
    .line 674
    iput p1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabPadding:I

    .line 675
    invoke-direct {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->updateTabStyles()V

    .line 676
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .prologue
    .line 645
    iput p1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabTextColor:I

    .line 646
    invoke-direct {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->updateTabStyles()V

    .line 647
    return-void
.end method

.method public setTextColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 650
    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabTextColor:I

    .line 651
    invoke-direct {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->updateTabStyles()V

    .line 652
    return-void
.end method

.method public setTextSize(I)V
    .locals 0
    .param p1, "textSizePx"    # I

    .prologue
    .line 636
    iput p1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabTextSize:I

    .line 637
    invoke-direct {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->updateTabStyles()V

    .line 638
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 0
    .param p1, "typeface"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .prologue
    .line 659
    iput-object p1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabTypeface:Landroid/graphics/Typeface;

    .line 660
    iput p2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabTypefaceStyle:I

    .line 661
    invoke-direct {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->updateTabStyles()V

    .line 662
    return-void
.end method

.method public setUnderlineColor(I)V
    .locals 0
    .param p1, "underlineColor"    # I

    .prologue
    .line 562
    iput p1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->underlineColor:I

    .line 563
    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->invalidate()V

    .line 564
    return-void
.end method

.method public setUnderlineColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->underlineColor:I

    .line 568
    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->invalidate()V

    .line 569
    return-void
.end method

.method public setUnderlineHeight(I)V
    .locals 0
    .param p1, "underlineHeightPx"    # I

    .prologue
    .line 590
    iput p1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->underlineHeight:I

    .line 591
    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->invalidate()V

    .line 592
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .param p1, "pager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    .line 184
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->pageListener:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 190
    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->notifyDataSetChanged()V

    .line 191
    return-void
.end method
