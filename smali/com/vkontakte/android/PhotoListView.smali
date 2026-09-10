.class public Lcom/vkontakte/android/PhotoListView;
.super Landroid/widget/FrameLayout;
.source "PhotoListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/PhotoListView$FooterView;,
        Lcom/vkontakte/android/PhotoListView$PhotoImageAdapter;,
        Lcom/vkontakte/android/PhotoListView$PhotosAdapter;,
        Lcom/vkontakte/android/PhotoListView$ScrollStopTimerTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Landroid/widget/AbsListView$OnScrollListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field public static final ACTION_PHOTO_DELETED:Ljava/lang/String; = "com.vkontakte.android.PHOTO_DELETED"

.field public static final TYPE_ALL:I = 0x2

.field public static final TYPE_FEED:I = 0x3

.field public static final TYPE_USER:I = 0x1


# instance fields
.field private adapter:Lcom/vkontakte/android/PhotoListView$PhotosAdapter;

.field private aid:I

.field private bigProgress:Landroid/widget/ProgressBar;

.field private cellPadding:I

.field private cellSize:I

.field private dataLoading:Z

.field private imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

.field private list:Landroid/widget/GridView;

.field private loaded:Z

.field private moreAvailable:Z

.field private noPhotosText:Landroid/widget/TextView;

.field private photos:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/Photo;",
            ">;"
        }
    .end annotation
.end field

.field private receiver:Landroid/content/BroadcastReceiver;

.field private timer:Ljava/util/Timer;

.field public total:I

.field private type:I

.field private uid:I

.field private viCount:I

.field private viStart:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/PhotoListView;->photos:Ljava/util/Vector;

    .line 46
    iput-boolean v1, p0, Lcom/vkontakte/android/PhotoListView;->dataLoading:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/PhotoListView;->moreAvailable:Z

    .line 51
    iput v1, p0, Lcom/vkontakte/android/PhotoListView;->total:I

    .line 54
    iput-boolean v1, p0, Lcom/vkontakte/android/PhotoListView;->loaded:Z

    .line 56
    new-instance v0, Lcom/vkontakte/android/PhotoListView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/PhotoListView$1;-><init>(Lcom/vkontakte/android/PhotoListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/PhotoListView;->receiver:Landroid/content/BroadcastReceiver;

    .line 72
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoListView;->init()V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/PhotoListView;->photos:Ljava/util/Vector;

    .line 46
    iput-boolean v1, p0, Lcom/vkontakte/android/PhotoListView;->dataLoading:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/PhotoListView;->moreAvailable:Z

    .line 51
    iput v1, p0, Lcom/vkontakte/android/PhotoListView;->total:I

    .line 54
    iput-boolean v1, p0, Lcom/vkontakte/android/PhotoListView;->loaded:Z

    .line 56
    new-instance v0, Lcom/vkontakte/android/PhotoListView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/PhotoListView$1;-><init>(Lcom/vkontakte/android/PhotoListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/PhotoListView;->receiver:Landroid/content/BroadcastReceiver;

    .line 77
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoListView;->init()V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/PhotoListView;->photos:Ljava/util/Vector;

    .line 46
    iput-boolean v1, p0, Lcom/vkontakte/android/PhotoListView;->dataLoading:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/PhotoListView;->moreAvailable:Z

    .line 51
    iput v1, p0, Lcom/vkontakte/android/PhotoListView;->total:I

    .line 54
    iput-boolean v1, p0, Lcom/vkontakte/android/PhotoListView;->loaded:Z

    .line 56
    new-instance v0, Lcom/vkontakte/android/PhotoListView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/PhotoListView$1;-><init>(Lcom/vkontakte/android/PhotoListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/PhotoListView;->receiver:Landroid/content/BroadcastReceiver;

    .line 82
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoListView;->init()V

    .line 83
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/PhotoListView;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/vkontakte/android/PhotoListView;->aid:I

    return v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/PhotoListView;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView;->photos:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/PhotoListView;)I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/vkontakte/android/PhotoListView;->viStart:I

    return v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/PhotoListView;)I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/vkontakte/android/PhotoListView;->viCount:I

    return v0
.end method

.method static synthetic access$12(Lcom/vkontakte/android/PhotoListView;Z)V
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/vkontakte/android/PhotoListView;->dataLoading:Z

    return-void
.end method

.method static synthetic access$13(Lcom/vkontakte/android/PhotoListView;Z)V
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/vkontakte/android/PhotoListView;->moreAvailable:Z

    return-void
.end method

.method static synthetic access$14(Lcom/vkontakte/android/PhotoListView;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView;->bigProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$15(Lcom/vkontakte/android/PhotoListView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView;->noPhotosText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$16(Lcom/vkontakte/android/PhotoListView;)Lcom/vkontakte/android/PhotoListView$PhotosAdapter;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView;->adapter:Lcom/vkontakte/android/PhotoListView$PhotosAdapter;

    return-object v0
.end method

.method static synthetic access$17(Lcom/vkontakte/android/PhotoListView;)Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/vkontakte/android/PhotoListView;->loaded:Z

    return v0
.end method

.method static synthetic access$18(Lcom/vkontakte/android/PhotoListView;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/vkontakte/android/PhotoListView;->dataLoading:Z

    return v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/PhotoListView;)V
    .locals 0

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoListView;->updateList()V

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/PhotoListView;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/vkontakte/android/PhotoListView;->moreAvailable:Z

    return v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/PhotoListView;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/vkontakte/android/PhotoListView;->cellSize:I

    return v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/PhotoListView;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/vkontakte/android/PhotoListView;->cellPadding:I

    return v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/PhotoListView;I)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/vkontakte/android/PhotoListView;->cellSize:I

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/PhotoListView;I)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/vkontakte/android/PhotoListView;->cellPadding:I

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/PhotoListView;)Lcom/vkontakte/android/ui/ListImageLoader;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    return-object v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/PhotoListView;)Landroid/widget/GridView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView;->list:Landroid/widget/GridView;

    return-object v0
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, -0x1

    const/4 v6, -0x2

    const/16 v5, 0x11

    .line 103
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 104
    const/16 v2, 0x69

    iput v2, p0, Lcom/vkontakte/android/PhotoListView;->cellSize:I

    .line 105
    const/16 v2, 0xa

    iput v2, p0, Lcom/vkontakte/android/PhotoListView;->cellPadding:I

    .line 111
    :goto_0
    const/high16 v2, -0x1000000

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PhotoListView;->setBackgroundColor(I)V

    .line 112
    new-instance v2, Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkontakte/android/PhotoListView;->list:Landroid/widget/GridView;

    .line 113
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->list:Landroid/widget/GridView;

    iget v3, p0, Lcom/vkontakte/android/PhotoListView;->cellSize:I

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 114
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->list:Landroid/widget/GridView;

    invoke-virtual {v2, v7}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 115
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->list:Landroid/widget/GridView;

    new-instance v3, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;

    invoke-direct {v3, p0, v4}, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;-><init>(Lcom/vkontakte/android/PhotoListView;Lcom/vkontakte/android/PhotoListView$PhotosAdapter;)V

    iput-object v3, p0, Lcom/vkontakte/android/PhotoListView;->adapter:Lcom/vkontakte/android/PhotoListView$PhotosAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 116
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->list:Landroid/widget/GridView;

    invoke-virtual {v2, v5}, Landroid/widget/GridView;->setGravity(I)V

    .line 117
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->list:Landroid/widget/GridView;

    iget v3, p0, Lcom/vkontakte/android/PhotoListView;->cellPadding:I

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 118
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->list:Landroid/widget/GridView;

    iget v3, p0, Lcom/vkontakte/android/PhotoListView;->cellPadding:I

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 119
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->list:Landroid/widget/GridView;

    invoke-virtual {v2, p0}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 120
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->list:Landroid/widget/GridView;

    invoke-virtual {v2, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 122
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->list:Landroid/widget/GridView;

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PhotoListView;->addView(Landroid/view/View;)V

    .line 123
    new-instance v2, Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-direct {v2}, Lcom/vkontakte/android/ui/ListImageLoader;-><init>()V

    iput-object v2, p0, Lcom/vkontakte/android/PhotoListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    .line 124
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/vkontakte/android/ui/ListImageLoader;->allowRepeat:Z

    .line 125
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    new-instance v3, Lcom/vkontakte/android/PhotoListView$PhotoImageAdapter;

    invoke-direct {v3, p0, v4}, Lcom/vkontakte/android/PhotoListView$PhotoImageAdapter;-><init>(Lcom/vkontakte/android/PhotoListView;Lcom/vkontakte/android/PhotoListView$PhotoImageAdapter;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/ListImageLoader;->setAdapter(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;)V

    .line 127
    new-instance v2, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkontakte/android/PhotoListView;->bigProgress:Landroid/widget/ProgressBar;

    .line 128
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 129
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 130
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020213

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PhotoListView;->addView(Landroid/view/View;)V

    .line 134
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkontakte/android/PhotoListView;->noPhotosText:Landroid/widget/TextView;

    .line 135
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->noPhotosText:Landroid/widget/TextView;

    const v3, -0x111112

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->noPhotosText:Landroid/widget/TextView;

    const v3, 0x7f0900e1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 137
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->noPhotosText:Landroid/widget/TextView;

    const/high16 v3, 0x41880000    # 17.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 138
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->noPhotosText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 139
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->noPhotosText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v7, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 141
    .local v1, "lparams":Landroid/widget/FrameLayout$LayoutParams;
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 142
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->noPhotosText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->noPhotosText:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 144
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->noPhotosText:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PhotoListView;->addView(Landroid/view/View;)V

    .line 145
    return-void

    .line 107
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "lparams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    const/high16 v2, 0x428c0000    # 70.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    iput v2, p0, Lcom/vkontakte/android/PhotoListView;->cellSize:I

    .line 108
    const/high16 v2, 0x40e00000    # 7.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    iput v2, p0, Lcom/vkontakte/android/PhotoListView;->cellPadding:I

    goto/16 :goto_0
.end method

.method private loadData()V
    .locals 5

    .prologue
    const/16 v4, 0x64

    const/4 v3, 0x1

    .line 165
    iget-boolean v0, p0, Lcom/vkontakte/android/PhotoListView;->dataLoading:Z

    if-eqz v0, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iput-boolean v3, p0, Lcom/vkontakte/android/PhotoListView;->dataLoading:Z

    .line 167
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView;->noPhotosText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    iget v0, p0, Lcom/vkontakte/android/PhotoListView;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 169
    new-instance v0, Lcom/vkontakte/android/api/PhotosGetAll;

    iget v1, p0, Lcom/vkontakte/android/PhotoListView;->uid:I

    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->photos:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-direct {v0, v1, v2, v4}, Lcom/vkontakte/android/api/PhotosGetAll;-><init>(III)V

    .line 170
    new-instance v1, Lcom/vkontakte/android/PhotoListView$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/PhotoListView$2;-><init>(Lcom/vkontakte/android/PhotoListView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PhotosGetAll;->setCallback(Lcom/vkontakte/android/api/PhotosGetAll$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 189
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 191
    :cond_2
    iget v0, p0, Lcom/vkontakte/android/PhotoListView;->type:I

    if-ne v0, v3, :cond_3

    .line 192
    new-instance v0, Lcom/vkontakte/android/api/PhotosGetUserPhotos;

    iget v1, p0, Lcom/vkontakte/android/PhotoListView;->uid:I

    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->photos:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-direct {v0, v1, v2, v4}, Lcom/vkontakte/android/api/PhotosGetUserPhotos;-><init>(III)V

    .line 193
    new-instance v1, Lcom/vkontakte/android/PhotoListView$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/PhotoListView$3;-><init>(Lcom/vkontakte/android/PhotoListView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PhotosGetUserPhotos;->setCallback(Lcom/vkontakte/android/api/PhotosGetUserPhotos$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 212
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 214
    :cond_3
    iget v0, p0, Lcom/vkontakte/android/PhotoListView;->aid:I

    if-eqz v0, :cond_0

    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/PhotoListView;->moreAvailable:Z

    .line 216
    new-instance v0, Lcom/vkontakte/android/api/PhotosGet;

    iget v1, p0, Lcom/vkontakte/android/PhotoListView;->uid:I

    iget v2, p0, Lcom/vkontakte/android/PhotoListView;->aid:I

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/PhotosGet;-><init>(II)V

    .line 217
    new-instance v1, Lcom/vkontakte/android/PhotoListView$4;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/PhotoListView$4;-><init>(Lcom/vkontakte/android/PhotoListView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PhotosGet;->setCallback(Lcom/vkontakte/android/api/PhotosGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 233
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method private updateList()V
    .locals 1

    .prologue
    .line 244
    new-instance v0, Lcom/vkontakte/android/PhotoListView$5;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/PhotoListView$5;-><init>(Lcom/vkontakte/android/PhotoListView;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/PhotoListView;->post(Ljava/lang/Runnable;)Z

    .line 250
    return-void
.end method


# virtual methods
.method public appendList(Lcom/vkontakte/android/Photo;)V
    .locals 2
    .param p1, "p"    # Lcom/vkontakte/android/Photo;

    .prologue
    .line 157
    iget v0, p0, Lcom/vkontakte/android/PhotoListView;->total:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vkontakte/android/PhotoListView;->total:I

    .line 158
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoader;->cancel()V

    .line 159
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView;->bigProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView;->photos:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoListView;->updateList()V

    .line 162
    return-void
.end method

.method public appendList(Ljava/util/Vector;I)V
    .locals 2
    .param p2, "t"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/Photo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, "p":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    if-lez p2, :cond_0

    iput p2, p0, Lcom/vkontakte/android/PhotoListView;->total:I

    .line 149
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/PhotoListView;->loaded:Z

    .line 150
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoader;->cancel()V

    .line 151
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView;->bigProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView;->photos:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 153
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoListView;->updateList()V

    .line 154
    return-void
.end method

.method public getList()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/Photo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView;->photos:Ljava/util/Vector;

    return-object v0
.end method

.method public onActivate()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView;->photos:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 319
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoListView;->loadData()V

    .line 323
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoader;->activate()V

    .line 324
    return-void

    .line 321
    :cond_0
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoListView;->updateList()V

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 91
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 92
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 93
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.vkontakte.android.PHOTO_DELETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    return-void
.end method

.method public onDeactivate()V
    .locals 3

    .prologue
    .line 327
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/ListImageLoader;->cancel()V

    .line 328
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/ListImageLoader;->clear()V

    .line 329
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->list:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 335
    return-void

    .line 330
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->list:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 331
    .local v1, "v":Landroid/view/View;
    instance-of v2, v1, Lcom/vkontakte/android/ui/PhotoListItem;

    if-eqz v2, :cond_1

    .line 332
    check-cast v1, Lcom/vkontakte/android/ui/PhotoListItem;

    .end local v1    # "v":Landroid/view/View;
    invoke-virtual {v1}, Lcom/vkontakte/android/ui/PhotoListItem;->reset()V

    .line 329
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoListView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/PhotoListView;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 99
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 288
    .local p1, "aview":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lcom/vkontakte/android/PhotoListView;->photos:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v0, v4, [Lcom/vkontakte/android/Photo;

    .line 289
    .local v0, "array":[Lcom/vkontakte/android/Photo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/vkontakte/android/PhotoListView;->photos:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v2, v4, :cond_2

    .line 292
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoListView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 293
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "photo_list"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 294
    const-string v4, "photo_index"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 295
    iget v4, p0, Lcom/vkontakte/android/PhotoListView;->type:I

    if-lez v4, :cond_0

    .line 296
    const-string v4, "list_type"

    iget v5, p0, Lcom/vkontakte/android/PhotoListView;->type:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 297
    const-string v4, "list_uid"

    iget v5, p0, Lcom/vkontakte/android/PhotoListView;->uid:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 298
    const-string v4, "list_total"

    iget v5, p0, Lcom/vkontakte/android/PhotoListView;->total:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 299
    const-string v4, "incomplete"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 301
    :cond_0
    const-string v5, "descr"

    iget-object v4, p0, Lcom/vkontakte/android/PhotoListView;->photos:Ljava/util/Vector;

    invoke-virtual {v4, p3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/Photo;

    iget-object v4, v4, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    const-string v4, "aid"

    iget v5, p0, Lcom/vkontakte/android/PhotoListView;->aid:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 303
    iget-object v4, p0, Lcom/vkontakte/android/PhotoListView;->photos:Ljava/util/Vector;

    invoke-virtual {v4, p3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/Photo;

    iget-object v4, v4, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    invoke-static {v4}, Lcom/vkontakte/android/ImageCache;->isInCache(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 304
    check-cast p2, Lcom/vkontakte/android/ui/PhotoListItem;

    .end local p2    # "view":Landroid/view/View;
    invoke-virtual {p2}, Lcom/vkontakte/android/ui/PhotoListItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 305
    .local v1, "b":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    const-string v4, "thumb"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 307
    .end local v1    # "b":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoListView;->getContext()Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Lcom/vkontakte/android/WallActivity;

    if-eqz v4, :cond_3

    .line 308
    const-string v5, "username"

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoListView;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/WallActivity;

    iget-object v4, v4, Lcom/vkontakte/android/WallActivity;->userName:Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    const-string v5, "userphoto"

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoListView;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/WallActivity;

    iget-object v4, v4, Lcom/vkontakte/android/WallActivity;->userPhoto:Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    :goto_1
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 315
    return-void

    .line 290
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local p2    # "view":Landroid/view/View;
    :cond_2
    iget-object v4, p0, Lcom/vkontakte/android/PhotoListView;->photos:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/Photo;

    aput-object v4, v0, v2

    .line 289
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 311
    .end local p2    # "view":Landroid/view/View;
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_3
    const-string v5, "username"

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoListView;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v6, "username"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    const-string v5, "userphoto"

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoListView;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v6, "userphoto"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 280
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 281
    if-eqz p1, :cond_0

    .line 282
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoListView;->updateList()V

    .line 284
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 258
    iget v0, p0, Lcom/vkontakte/android/PhotoListView;->viCount:I

    if-ne v0, p3, :cond_1

    iget v0, p0, Lcom/vkontakte/android/PhotoListView;->viStart:I

    if-ne v0, p2, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 260
    :cond_2
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/PhotoListView;->timer:Ljava/util/Timer;

    .line 261
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/vkontakte/android/PhotoListView$ScrollStopTimerTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/PhotoListView$ScrollStopTimerTask;-><init>(Lcom/vkontakte/android/PhotoListView;Lcom/vkontakte/android/PhotoListView$ScrollStopTimerTask;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 262
    iput p3, p0, Lcom/vkontakte/android/PhotoListView;->viCount:I

    .line 263
    iput p2, p0, Lcom/vkontakte/android/PhotoListView;->viStart:I

    .line 264
    add-int v0, p2, p3

    if-ne v0, p4, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/PhotoListView;->dataLoading:Z

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/PhotoListView;->moreAvailable:Z

    if-eqz v0, :cond_0

    .line 265
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoListView;->loadData()V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 271
    const-string v0, "vk"

    const-string v1, "SCROLL STATE CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 273
    :cond_0
    const-string v0, "vk"

    const-string v1, "here."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoader;->cancel()V

    .line 277
    :cond_1
    return-void
.end method

.method public setAlbum(II)V
    .locals 1
    .param p1, "u"    # I
    .param p2, "a"    # I

    .prologue
    .line 238
    iput p1, p0, Lcom/vkontakte/android/PhotoListView;->uid:I

    .line 239
    iput p2, p0, Lcom/vkontakte/android/PhotoListView;->aid:I

    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/PhotoListView;->moreAvailable:Z

    .line 241
    return-void
.end method

.method public setType(II)V
    .locals 0
    .param p1, "_type"    # I
    .param p2, "_uid"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/vkontakte/android/PhotoListView;->type:I

    .line 87
    iput p2, p0, Lcom/vkontakte/android/PhotoListView;->uid:I

    .line 88
    return-void
.end method
