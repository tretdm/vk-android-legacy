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

.field public static final TYPE_FAVE:I = 0x4

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

    .line 79
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/PhotoListView;->photos:Ljava/util/Vector;

    .line 52
    iput-boolean v1, p0, Lcom/vkontakte/android/PhotoListView;->dataLoading:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/PhotoListView;->moreAvailable:Z

    .line 57
    iput v1, p0, Lcom/vkontakte/android/PhotoListView;->total:I

    .line 60
    iput-boolean v1, p0, Lcom/vkontakte/android/PhotoListView;->loaded:Z

    .line 62
    new-instance v0, Lcom/vkontakte/android/PhotoListView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/PhotoListView$1;-><init>(Lcom/vkontakte/android/PhotoListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/PhotoListView;->receiver:Landroid/content/BroadcastReceiver;

    .line 80
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoListView;->init()V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/PhotoListView;->photos:Ljava/util/Vector;

    .line 52
    iput-boolean v1, p0, Lcom/vkontakte/android/PhotoListView;->dataLoading:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/PhotoListView;->moreAvailable:Z

    .line 57
    iput v1, p0, Lcom/vkontakte/android/PhotoListView;->total:I

    .line 60
    iput-boolean v1, p0, Lcom/vkontakte/android/PhotoListView;->loaded:Z

    .line 62
    new-instance v0, Lcom/vkontakte/android/PhotoListView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/PhotoListView$1;-><init>(Lcom/vkontakte/android/PhotoListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/PhotoListView;->receiver:Landroid/content/BroadcastReceiver;

    .line 85
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoListView;->init()V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/PhotoListView;->photos:Ljava/util/Vector;

    .line 52
    iput-boolean v1, p0, Lcom/vkontakte/android/PhotoListView;->dataLoading:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/PhotoListView;->moreAvailable:Z

    .line 57
    iput v1, p0, Lcom/vkontakte/android/PhotoListView;->total:I

    .line 60
    iput-boolean v1, p0, Lcom/vkontakte/android/PhotoListView;->loaded:Z

    .line 62
    new-instance v0, Lcom/vkontakte/android/PhotoListView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/PhotoListView$1;-><init>(Lcom/vkontakte/android/PhotoListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/PhotoListView;->receiver:Landroid/content/BroadcastReceiver;

    .line 90
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoListView;->init()V

    .line 91
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/PhotoListView;)I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/vkontakte/android/PhotoListView;->aid:I

    return v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/PhotoListView;)I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/vkontakte/android/PhotoListView;->type:I

    return v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/PhotoListView;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/vkontakte/android/PhotoListView;->viStart:I

    return v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/PhotoListView;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/vkontakte/android/PhotoListView;->viCount:I

    return v0
.end method

.method static synthetic access$12(Lcom/vkontakte/android/PhotoListView;)Landroid/widget/GridView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView;->list:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$13(Lcom/vkontakte/android/PhotoListView;Z)V
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/vkontakte/android/PhotoListView;->dataLoading:Z

    return-void
.end method

.method static synthetic access$14(Lcom/vkontakte/android/PhotoListView;Z)V
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/vkontakte/android/PhotoListView;->moreAvailable:Z

    return-void
.end method

.method static synthetic access$15(Lcom/vkontakte/android/PhotoListView;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView;->bigProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$16(Lcom/vkontakte/android/PhotoListView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView;->noPhotosText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$17(Lcom/vkontakte/android/PhotoListView;)Lcom/vkontakte/android/PhotoListView$PhotosAdapter;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView;->adapter:Lcom/vkontakte/android/PhotoListView$PhotosAdapter;

    return-object v0
.end method

.method static synthetic access$18(Lcom/vkontakte/android/PhotoListView;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/vkontakte/android/PhotoListView;->loaded:Z

    return v0
.end method

.method static synthetic access$19(Lcom/vkontakte/android/PhotoListView;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/vkontakte/android/PhotoListView;->dataLoading:Z

    return v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/PhotoListView;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView;->photos:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/PhotoListView;)V
    .locals 0

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoListView;->updateList()V

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/PhotoListView;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/vkontakte/android/PhotoListView;->moreAvailable:Z

    return v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/PhotoListView;)I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/vkontakte/android/PhotoListView;->cellSize:I

    return v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/PhotoListView;)I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/vkontakte/android/PhotoListView;->cellPadding:I

    return v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/PhotoListView;I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/vkontakte/android/PhotoListView;->cellSize:I

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/PhotoListView;I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/vkontakte/android/PhotoListView;->cellPadding:I

    return-void
.end method

.method static synthetic access$9(Lcom/vkontakte/android/PhotoListView;)Lcom/vkontakte/android/ui/ListImageLoader;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    return-object v0
.end method

.method private init()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x11

    const/4 v6, -0x2

    const/high16 v4, 0x40e00000    # 7.0f

    const/4 v5, 0x0

    .line 111
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 112
    const/high16 v2, 0x42d20000    # 105.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    iput v2, p0, Lcom/vkontakte/android/PhotoListView;->cellSize:I

    .line 113
    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    iput v2, p0, Lcom/vkontakte/android/PhotoListView;->cellPadding:I

    .line 119
    :goto_0
    const/high16 v2, -0x1000000

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PhotoListView;->setBackgroundColor(I)V

    .line 120
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoListView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f03004d

    invoke-static {v2, v3, v8}, Lcom/vkontakte/android/PhotoListView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/vkontakte/android/PhotoListView;->list:Landroid/widget/GridView;

    .line 121
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->list:Landroid/widget/GridView;

    iget v3, p0, Lcom/vkontakte/android/PhotoListView;->cellSize:I

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 122
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->list:Landroid/widget/GridView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 123
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->list:Landroid/widget/GridView;

    new-instance v3, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;

    invoke-direct {v3, p0, v8}, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;-><init>(Lcom/vkontakte/android/PhotoListView;Lcom/vkontakte/android/PhotoListView$PhotosAdapter;)V

    iput-object v3, p0, Lcom/vkontakte/android/PhotoListView;->adapter:Lcom/vkontakte/android/PhotoListView$PhotosAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 124
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->list:Landroid/widget/GridView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setGravity(I)V

    .line 125
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->list:Landroid/widget/GridView;

    iget v3, p0, Lcom/vkontakte/android/PhotoListView;->cellPadding:I

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 126
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->list:Landroid/widget/GridView;

    iget v3, p0, Lcom/vkontakte/android/PhotoListView;->cellPadding:I

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 127
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->list:Landroid/widget/GridView;

    invoke-virtual {v2, p0}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 128
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->list:Landroid/widget/GridView;

    invoke-virtual {v2, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 129
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->list:Landroid/widget/GridView;

    invoke-virtual {v2, v5}, Landroid/widget/GridView;->setVerticalFadingEdgeEnabled(Z)V

    .line 130
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->list:Landroid/widget/GridView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 131
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->list:Landroid/widget/GridView;

    invoke-virtual {v2, v5}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 132
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->list:Landroid/widget/GridView;

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 134
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->list:Landroid/widget/GridView;

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PhotoListView;->addView(Landroid/view/View;)V

    .line 135
    new-instance v2, Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-direct {v2}, Lcom/vkontakte/android/ui/ListImageLoader;-><init>()V

    iput-object v2, p0, Lcom/vkontakte/android/PhotoListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    .line 136
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    iput-boolean v5, v2, Lcom/vkontakte/android/ui/ListImageLoader;->allowRepeat:Z

    .line 137
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    new-instance v3, Lcom/vkontakte/android/PhotoListView$PhotoImageAdapter;

    invoke-direct {v3, p0, v8}, Lcom/vkontakte/android/PhotoListView$PhotoImageAdapter;-><init>(Lcom/vkontakte/android/PhotoListView;Lcom/vkontakte/android/PhotoListView$PhotoImageAdapter;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/ListImageLoader;->setAdapter(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;)V

    .line 139
    new-instance v2, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkontakte/android/PhotoListView;->bigProgress:Landroid/widget/ProgressBar;

    .line 140
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 141
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 142
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020231

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PhotoListView;->addView(Landroid/view/View;)V

    .line 146
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkontakte/android/PhotoListView;->noPhotosText:Landroid/widget/TextView;

    .line 147
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->noPhotosText:Landroid/widget/TextView;

    const v3, -0x111112

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->noPhotosText:Landroid/widget/TextView;

    const v3, 0x7f0900e2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 149
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->noPhotosText:Landroid/widget/TextView;

    const/high16 v3, 0x41880000    # 17.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 150
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->noPhotosText:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 151
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->noPhotosText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 153
    .local v1, "lparams":Landroid/widget/FrameLayout$LayoutParams;
    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 154
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->noPhotosText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->noPhotosText:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 156
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->noPhotosText:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PhotoListView;->addView(Landroid/view/View;)V

    .line 157
    return-void

    .line 115
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "lparams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    const/high16 v2, 0x428c0000    # 70.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    iput v2, p0, Lcom/vkontakte/android/PhotoListView;->cellSize:I

    .line 116
    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    iput v2, p0, Lcom/vkontakte/android/PhotoListView;->cellPadding:I

    goto/16 :goto_0
.end method

.method private loadData()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x64

    .line 177
    iget-boolean v0, p0, Lcom/vkontakte/android/PhotoListView;->dataLoading:Z

    if-eqz v0, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iput-boolean v4, p0, Lcom/vkontakte/android/PhotoListView;->dataLoading:Z

    .line 179
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView;->noPhotosText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    iget v0, p0, Lcom/vkontakte/android/PhotoListView;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 181
    new-instance v0, Lcom/vkontakte/android/api/PhotosGetAll;

    iget v1, p0, Lcom/vkontakte/android/PhotoListView;->uid:I

    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->photos:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/api/PhotosGetAll;-><init>(III)V

    .line 182
    new-instance v1, Lcom/vkontakte/android/PhotoListView$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/PhotoListView$2;-><init>(Lcom/vkontakte/android/PhotoListView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PhotosGetAll;->setCallback(Lcom/vkontakte/android/api/PhotosGetAll$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 201
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 203
    :cond_2
    iget v0, p0, Lcom/vkontakte/android/PhotoListView;->type:I

    if-ne v0, v4, :cond_3

    .line 204
    new-instance v0, Lcom/vkontakte/android/api/PhotosGetUserPhotos;

    iget v1, p0, Lcom/vkontakte/android/PhotoListView;->uid:I

    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->photos:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/api/PhotosGetUserPhotos;-><init>(III)V

    .line 205
    new-instance v1, Lcom/vkontakte/android/PhotoListView$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/PhotoListView$3;-><init>(Lcom/vkontakte/android/PhotoListView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PhotosGetUserPhotos;->setCallback(Lcom/vkontakte/android/api/PhotosGetUserPhotos$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 224
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 226
    :cond_3
    iget v0, p0, Lcom/vkontakte/android/PhotoListView;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 227
    new-instance v0, Lcom/vkontakte/android/api/FaveGetPhotos;

    iget-object v1, p0, Lcom/vkontakte/android/PhotoListView;->photos:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-direct {v0, v1, v3}, Lcom/vkontakte/android/api/FaveGetPhotos;-><init>(II)V

    .line 228
    new-instance v1, Lcom/vkontakte/android/PhotoListView$4;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/PhotoListView$4;-><init>(Lcom/vkontakte/android/PhotoListView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/FaveGetPhotos;->setCallback(Lcom/vkontakte/android/api/FaveGetPhotos$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 247
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 249
    :cond_4
    iget v0, p0, Lcom/vkontakte/android/PhotoListView;->aid:I

    if-eqz v0, :cond_0

    .line 250
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/PhotoListView;->moreAvailable:Z

    .line 251
    new-instance v0, Lcom/vkontakte/android/api/PhotosGet;

    iget v1, p0, Lcom/vkontakte/android/PhotoListView;->uid:I

    iget v2, p0, Lcom/vkontakte/android/PhotoListView;->aid:I

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/PhotosGet;-><init>(II)V

    .line 252
    new-instance v1, Lcom/vkontakte/android/PhotoListView$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/PhotoListView$5;-><init>(Lcom/vkontakte/android/PhotoListView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PhotosGet;->setCallback(Lcom/vkontakte/android/api/PhotosGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 268
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method private updateList()V
    .locals 1

    .prologue
    .line 279
    new-instance v0, Lcom/vkontakte/android/PhotoListView$6;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/PhotoListView$6;-><init>(Lcom/vkontakte/android/PhotoListView;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/PhotoListView;->post(Ljava/lang/Runnable;)Z

    .line 285
    return-void
.end method


# virtual methods
.method public appendList(Lcom/vkontakte/android/Photo;)V
    .locals 2
    .param p1, "p"    # Lcom/vkontakte/android/Photo;

    .prologue
    .line 169
    iget v0, p0, Lcom/vkontakte/android/PhotoListView;->total:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vkontakte/android/PhotoListView;->total:I

    .line 170
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoader;->cancel()V

    .line 171
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView;->bigProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView;->photos:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoListView;->updateList()V

    .line 174
    return-void
.end method

.method public appendList(Ljava/util/List;I)V
    .locals 2
    .param p2, "t"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/Photo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, "p":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/Photo;>;"
    if-lez p2, :cond_0

    iput p2, p0, Lcom/vkontakte/android/PhotoListView;->total:I

    .line 161
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/PhotoListView;->loaded:Z

    .line 162
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoader;->cancel()V

    .line 163
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView;->bigProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView;->photos:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 165
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoListView;->updateList()V

    .line 166
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
    .line 288
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView;->photos:Ljava/util/Vector;

    return-object v0
.end method

.method public onActivate()V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView;->photos:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 384
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoListView;->loadData()V

    .line 388
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoader;->activate()V

    .line 389
    return-void

    .line 386
    :cond_0
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoListView;->updateList()V

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 99
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 100
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 101
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.vkontakte.android.PHOTO_DELETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    return-void
.end method

.method public onDeactivate()V
    .locals 3

    .prologue
    .line 392
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/ListImageLoader;->cancel()V

    .line 393
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/ListImageLoader;->clear()V

    .line 394
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->list:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 400
    return-void

    .line 395
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView;->list:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 396
    .local v1, "v":Landroid/view/View;
    instance-of v2, v1, Lcom/vkontakte/android/ui/PhotoListItem;

    if-eqz v2, :cond_1

    .line 397
    check-cast v1, Lcom/vkontakte/android/ui/PhotoListItem;

    .end local v1    # "v":Landroid/view/View;
    invoke-virtual {v1}, Lcom/vkontakte/android/ui/PhotoListItem;->reset()V

    .line 394
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoListView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/PhotoListView;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 107
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
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
    .line 346
    .local p1, "aview":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v7, p0, Lcom/vkontakte/android/PhotoListView;->photos:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    new-array v0, v7, [Lcom/vkontakte/android/Photo;

    .line 347
    .local v0, "array":[Lcom/vkontakte/android/Photo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v7, p0, Lcom/vkontakte/android/PhotoListView;->photos:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-lt v2, v7, :cond_2

    .line 350
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoListView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 351
    .local v4, "intent":Landroid/content/Intent;
    const-string v7, "photo_list"

    invoke-virtual {v4, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 352
    const-string v7, "photo_index"

    invoke-virtual {v4, v7, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 353
    iget v7, p0, Lcom/vkontakte/android/PhotoListView;->type:I

    if-lez v7, :cond_0

    .line 354
    const-string v7, "list_type"

    iget v8, p0, Lcom/vkontakte/android/PhotoListView;->type:I

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 355
    const-string v7, "list_uid"

    iget v8, p0, Lcom/vkontakte/android/PhotoListView;->uid:I

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 356
    const-string v7, "list_total"

    iget v8, p0, Lcom/vkontakte/android/PhotoListView;->total:I

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 357
    const-string v7, "incomplete"

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 359
    :cond_0
    const-string v8, "descr"

    iget-object v7, p0, Lcom/vkontakte/android/PhotoListView;->photos:Ljava/util/Vector;

    invoke-virtual {v7, p3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/Photo;

    iget-object v7, v7, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    invoke-virtual {v4, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    const-string v7, "aid"

    iget v8, p0, Lcom/vkontakte/android/PhotoListView;->aid:I

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 361
    iget-object v7, p0, Lcom/vkontakte/android/PhotoListView;->photos:Ljava/util/Vector;

    invoke-virtual {v7, p3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/Photo;

    iget-object v7, v7, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    invoke-static {v7}, Lcom/vkontakte/android/ImageCache;->isInCache(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, p2

    .line 362
    check-cast v7, Lcom/vkontakte/android/ui/PhotoListItem;

    invoke-virtual {v7}, Lcom/vkontakte/android/ui/PhotoListItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 363
    .local v1, "b":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    const-string v7, "thumb"

    invoke-virtual {v4, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 365
    .end local v1    # "b":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoListView;->getContext()Landroid/content/Context;

    move-result-object v7

    instance-of v7, v7, Lcom/vkontakte/android/WallActivity;

    if-eqz v7, :cond_3

    .line 366
    const-string v8, "username"

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoListView;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/WallActivity;

    iget-object v7, v7, Lcom/vkontakte/android/WallActivity;->userName:Ljava/lang/String;

    invoke-virtual {v4, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    const-string v8, "userphoto"

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoListView;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/WallActivity;

    iget-object v7, v7, Lcom/vkontakte/android/WallActivity;->userPhoto:Ljava/lang/String;

    invoke-virtual {v4, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    :goto_1
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x10

    if-lt v7, v8, :cond_4

    .line 373
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v5, v7, 0x5

    .line 374
    .local v5, "iw":I
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v3, v7, 0x5

    .line 375
    .local v3, "ih":I
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    div-int/lit8 v8, v5, 0x2

    sub-int/2addr v7, v8

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    div-int/lit8 v9, v3, 0x2

    sub-int/2addr v8, v9

    invoke-static {p2, v7, v8, v5, v3}, Landroid/app/ActivityOptions;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v6

    .line 376
    .local v6, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoListView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 380
    .end local v3    # "ih":I
    .end local v5    # "iw":I
    .end local v6    # "opts":Landroid/app/ActivityOptions;
    :goto_2
    return-void

    .line 348
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v7, p0, Lcom/vkontakte/android/PhotoListView;->photos:Ljava/util/Vector;

    invoke-virtual {v7, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/Photo;

    aput-object v7, v0, v2

    .line 347
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 369
    .restart local v4    # "intent":Landroid/content/Intent;
    :cond_3
    const-string v8, "username"

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoListView;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v9, "username"

    invoke-virtual {v7, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    const-string v8, "userphoto"

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoListView;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v9, "userphoto"

    invoke-virtual {v7, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 378
    :cond_4
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoListView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2
.end method

.method public onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/16 v7, 0x82

    const/4 v9, 0x0

    .line 315
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 316
    if-eqz p1, :cond_0

    .line 317
    sub-int v5, p4, p2

    .line 318
    .local v5, "w":I
    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    .line 319
    .local v3, "minPadding":I
    const/high16 v6, 0x41700000    # 15.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    .line 320
    .local v2, "maxPadding":I
    div-int/lit8 v6, v5, 0x4

    sub-int v1, v6, v3

    .line 322
    .local v1, "cellSizeIfFour":I
    if-ge v1, v7, :cond_1

    .line 323
    iput v1, p0, Lcom/vkontakte/android/PhotoListView;->cellSize:I

    .line 324
    iput v3, p0, Lcom/vkontakte/android/PhotoListView;->cellPadding:I

    .line 325
    const/4 v4, 0x4

    .line 331
    .local v4, "numColumns":I
    :goto_0
    const-string v6, "vk"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " cols, size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/vkontakte/android/PhotoListView;->cellSize:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", padding "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/vkontakte/android/PhotoListView;->cellPadding:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", if4 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget v6, p0, Lcom/vkontakte/android/PhotoListView;->cellSize:I

    mul-int/2addr v6, v4

    iget v7, p0, Lcom/vkontakte/android/PhotoListView;->cellPadding:I

    add-int/lit8 v8, v4, -0x1

    mul-int/2addr v7, v8

    add-int v0, v6, v7

    .line 336
    .local v0, "allColumnsWidth":I
    iget-object v6, p0, Lcom/vkontakte/android/PhotoListView;->list:Landroid/widget/GridView;

    iget v7, p0, Lcom/vkontakte/android/PhotoListView;->cellPadding:I

    invoke-virtual {v6, v7}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 337
    iget-object v6, p0, Lcom/vkontakte/android/PhotoListView;->list:Landroid/widget/GridView;

    iget v7, p0, Lcom/vkontakte/android/PhotoListView;->cellPadding:I

    invoke-virtual {v6, v7}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 338
    iget-object v6, p0, Lcom/vkontakte/android/PhotoListView;->list:Landroid/widget/GridView;

    sub-int v7, v5, v0

    div-int/lit8 v7, v7, 0x2

    sub-int v8, v5, v0

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v6, v7, v9, v8, v9}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 339
    iget-object v6, p0, Lcom/vkontakte/android/PhotoListView;->list:Landroid/widget/GridView;

    iget v7, p0, Lcom/vkontakte/android/PhotoListView;->cellSize:I

    invoke-virtual {v6, v7}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 340
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoListView;->updateList()V

    .line 342
    .end local v0    # "allColumnsWidth":I
    .end local v1    # "cellSizeIfFour":I
    .end local v2    # "maxPadding":I
    .end local v3    # "minPadding":I
    .end local v4    # "numColumns":I
    .end local v5    # "w":I
    :cond_0
    return-void

    .line 327
    .restart local v1    # "cellSizeIfFour":I
    .restart local v2    # "maxPadding":I
    .restart local v3    # "minPadding":I
    .restart local v5    # "w":I
    :cond_1
    iput v7, p0, Lcom/vkontakte/android/PhotoListView;->cellSize:I

    .line 328
    add-int/lit16 v6, v3, 0x82

    div-int v4, v5, v6

    .line 329
    .restart local v4    # "numColumns":I
    iget v6, p0, Lcom/vkontakte/android/PhotoListView;->cellSize:I

    mul-int/2addr v6, v4

    sub-int v6, v5, v6

    div-int/2addr v6, v4

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, p0, Lcom/vkontakte/android/PhotoListView;->cellPadding:I

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 293
    iget v0, p0, Lcom/vkontakte/android/PhotoListView;->viCount:I

    if-ne v0, p3, :cond_1

    iget v0, p0, Lcom/vkontakte/android/PhotoListView;->viStart:I

    if-ne v0, p2, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 295
    :cond_2
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/PhotoListView;->timer:Ljava/util/Timer;

    .line 296
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/vkontakte/android/PhotoListView$ScrollStopTimerTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/PhotoListView$ScrollStopTimerTask;-><init>(Lcom/vkontakte/android/PhotoListView;Lcom/vkontakte/android/PhotoListView$ScrollStopTimerTask;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 297
    iput p3, p0, Lcom/vkontakte/android/PhotoListView;->viCount:I

    .line 298
    iput p2, p0, Lcom/vkontakte/android/PhotoListView;->viStart:I

    .line 299
    add-int v0, p2, p3

    if-ne v0, p4, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/PhotoListView;->dataLoading:Z

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/PhotoListView;->moreAvailable:Z

    if-eqz v0, :cond_0

    .line 300
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoListView;->loadData()V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 306
    const-string v0, "vk"

    const-string v1, "SCROLL STATE CHANGED"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 308
    :cond_0
    const-string v0, "vk"

    const-string v1, "here."

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoader;->cancel()V

    .line 312
    :cond_1
    return-void
.end method

.method public setAlbum(II)V
    .locals 1
    .param p1, "u"    # I
    .param p2, "a"    # I

    .prologue
    .line 273
    iput p1, p0, Lcom/vkontakte/android/PhotoListView;->uid:I

    .line 274
    iput p2, p0, Lcom/vkontakte/android/PhotoListView;->aid:I

    .line 275
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/PhotoListView;->moreAvailable:Z

    .line 276
    return-void
.end method

.method public setType(II)V
    .locals 0
    .param p1, "_type"    # I
    .param p2, "_uid"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/vkontakte/android/PhotoListView;->type:I

    .line 95
    iput p2, p0, Lcom/vkontakte/android/PhotoListView;->uid:I

    .line 96
    return-void
.end method
