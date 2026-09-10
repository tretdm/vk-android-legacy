.class public Lcom/vkontakte/android/fragments/PhotoListFragment;
.super Landroid/app/Fragment;
.source "PhotoListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoImagesAdapter;,
        Lcom/vkontakte/android/fragments/PhotoListFragment$PhotosAdapter;,
        Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;
    }
.end annotation


# static fields
.field private static final UPLOAD_RESULT:I = 0xf32


# instance fields
.field private actionBarBg:Landroid/graphics/drawable/LayerDrawable;

.field private adapter:Lcom/vkontakte/android/fragments/PhotoListFragment$PhotosAdapter;

.field private album:Lcom/vkontakte/android/api/PhotoAlbum;

.field private contentView:Landroid/widget/FrameLayout;

.field private contentWrap:Landroid/widget/FrameLayout;

.field private currentReq:Lcom/vkontakte/android/APIRequest;

.field private dataLoading:Z

.field private emptyView:Landroid/widget/TextView;

.field private error:Lcom/vkontakte/android/ui/ErrorView;

.field private footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

.field private headerView:Landroid/view/View;

.field private imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field private layout:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;",
            ">;>;"
        }
    .end annotation
.end field

.field private list:Landroid/widget/ListView;

.field private moreAvailable:Z

.field private photos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Photo;",
            ">;"
        }
    .end annotation
.end field

.field private progress:Landroid/widget/ProgressBar;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private reusableImageViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private statusBarBG:Landroid/view/View;

.field private useFadingActionBar:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 148
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->photos:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->layout:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->reusableImageViews:Ljava/util/ArrayList;

    .line 92
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->useFadingActionBar:Z

    .line 97
    new-instance v0, Lcom/vkontakte/android/fragments/PhotoListFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/PhotoListFragment$1;-><init>(Lcom/vkontakte/android/fragments/PhotoListFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 150
    return-void

    .line 92
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/vkontakte/android/fragments/PhotoListFragment;)Lcom/vkontakte/android/api/PhotoAlbum;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PhotoListFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PhotoListFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->photos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/vkontakte/android/fragments/PhotoListFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PhotoListFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->headerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/vkontakte/android/fragments/PhotoListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PhotoListFragment;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->useFadingActionBar:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/vkontakte/android/fragments/PhotoListFragment;)Landroid/graphics/drawable/LayerDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PhotoListFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->actionBarBg:Landroid/graphics/drawable/LayerDrawable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/vkontakte/android/fragments/PhotoListFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PhotoListFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->statusBarBG:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/vkontakte/android/fragments/PhotoListFragment;)Lcom/vkontakte/android/ui/ErrorView;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PhotoListFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->error:Lcom/vkontakte/android/ui/ErrorView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/vkontakte/android/fragments/PhotoListFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PhotoListFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/vkontakte/android/fragments/PhotoListFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PhotoListFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/APIRequest;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/vkontakte/android/fragments/PhotoListFragment;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PhotoListFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->contentWrap:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/vkontakte/android/fragments/PhotoListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PhotoListFragment;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->animate()V

    return-void
.end method

.method static synthetic access$1900(Lcom/vkontakte/android/fragments/PhotoListFragment;)Lcom/vkontakte/android/ui/LoadMoreFooterView;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PhotoListFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkontakte/android/fragments/PhotoListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PhotoListFragment;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->layoutPhotos()V

    return-void
.end method

.method static synthetic access$2100(Lcom/vkontakte/android/fragments/PhotoListFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PhotoListFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PhotoListFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->layout:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PhotoListFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->reusableImageViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/vkontakte/android/fragments/PhotoListFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PhotoListFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkontakte/android/fragments/PhotoListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PhotoListFragment;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->updateCount()V

    return-void
.end method

.method static synthetic access$400(Lcom/vkontakte/android/fragments/PhotoListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PhotoListFragment;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->updateCover()V

    return-void
.end method

.method static synthetic access$700(Lcom/vkontakte/android/fragments/PhotoListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PhotoListFragment;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->moreAvailable:Z

    return v0
.end method

.method static synthetic access$702(Lcom/vkontakte/android/fragments/PhotoListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PhotoListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->moreAvailable:Z

    return p1
.end method

.method static synthetic access$800(Lcom/vkontakte/android/fragments/PhotoListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PhotoListFragment;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->dataLoading:Z

    return v0
.end method

.method static synthetic access$802(Lcom/vkontakte/android/fragments/PhotoListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PhotoListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->dataLoading:Z

    return p1
.end method

.method static synthetic access$900(Lcom/vkontakte/android/fragments/PhotoListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PhotoListFragment;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->loadData()V

    return-void
.end method

.method private animate()V
    .locals 20

    .prologue
    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->headerView:Landroid/view/View;

    move-object/from16 v16, v0

    const-string v17, "alpha"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    fill-array-data v18, :array_0

    invoke-static/range {v16 .. v18}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    const-wide/16 v17, 0xc8

    invoke-virtual/range {v16 .. v18}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 665
    .local v9, "headerAnim":Landroid/animation/ObjectAnimator;
    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    .line 666
    .local v13, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v13, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 667
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 668
    .local v3, "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v5, 0x0

    .line 669
    .local v5, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v10

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/ListView;->getChildCount()I

    move-result v16

    move/from16 v0, v16

    if-ge v10, v0, :cond_1

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 671
    .local v4, "ch":Landroid/view/View;
    instance-of v0, v4, Landroid/view/ViewGroup;

    move/from16 v16, v0

    if-eqz v16, :cond_0

    move-object v8, v4

    .line 672
    check-cast v8, Landroid/view/ViewGroup;

    .line 674
    .local v8, "group":Landroid/view/ViewGroup;
    add-int/lit8 v5, v5, 0x1

    .line 669
    .end local v8    # "group":Landroid/view/ViewGroup;
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 677
    .end local v4    # "ch":Landroid/view/View;
    :cond_1
    const-wide/16 v14, 0xc8

    .line 678
    .local v14, "totalDuration":J
    long-to-float v0, v14

    move/from16 v16, v0

    int-to-float v0, v5

    move/from16 v17, v0

    div-float v16, v16, v17

    const/high16 v17, 0x428c0000    # 70.0f

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 679
    .local v12, "photoDelay":F
    const/4 v11, 0x0

    .line 680
    .local v11, "n":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v10

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/ListView;->getChildCount()I

    move-result v16

    move/from16 v0, v16

    if-ge v10, v0, :cond_2

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 682
    .restart local v4    # "ch":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v16

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 683
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    .line 684
    const/16 v7, 0x12c

    .line 685
    .local v7, "duration":I
    int-to-float v0, v10

    move/from16 v16, v0

    mul-float v16, v16, v12

    move/from16 v0, v16

    float-to-int v6, v0

    .line 686
    .local v6, "delay":I
    const-string v16, "translationY"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    aput v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v4, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 687
    .local v2, "anim":Landroid/animation/ObjectAnimator;
    int-to-long v0, v7

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 688
    int-to-long v0, v6

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 689
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 690
    const-string v16, "alpha"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    aput v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v4, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 691
    int-to-long v0, v7

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 692
    int-to-long v0, v6

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 693
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 695
    .end local v2    # "anim":Landroid/animation/ObjectAnimator;
    .end local v4    # "ch":Landroid/view/View;
    .end local v6    # "delay":I
    .end local v7    # "duration":I
    :cond_2
    invoke-virtual {v13, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 696
    new-instance v16, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v16 .. v16}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 697
    invoke-virtual {v13}, Landroid/animation/AnimatorSet;->start()V

    .line 698
    return-void

    .line 664
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private calculateMultiThumbsHeight(Ljava/util/List;FF)F
    .locals 2
    .param p2, "width"    # F
    .param p3, "margin"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;FF)F"
        }
    .end annotation

    .prologue
    .line 701
    .local p1, "ratios":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float/2addr v0, p3

    sub-float v0, p2, v0

    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PhotoListFragment;->sum(Ljava/util/List;)F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method private layoutPhotos()V
    .locals 31

    .prologue
    .line 577
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v27

    if-nez v27, :cond_1

    .line 660
    :cond_0
    :goto_0
    return-void

    .line 578
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->deactivate()V

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->layout:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->clear()V

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/ListView;->getWidth()I

    move-result v27

    const/high16 v28, 0x40000000    # 2.0f

    invoke-static/range {v28 .. v28}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v28

    add-int v25, v27, v28

    .line 581
    .local v25, "viewWidth":I
    const-string v27, "vk"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "ViewWidth="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    const/high16 v27, 0x40a00000    # 5.0f

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v27

    move/from16 v0, v25

    move/from16 v1, v27

    if-gt v0, v1, :cond_2

    .line 583
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v24

    .line 584
    .local v24, "v":Landroid/view/View;
    new-instance v22, Landroid/graphics/Rect;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Rect;-><init>()V

    .line 585
    .local v22, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 586
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v25

    .line 587
    const-string v27, "vk"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "NEW ViewWidth="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    .end local v22    # "rect":Landroid/graphics/Rect;
    .end local v24    # "v":Landroid/view/View;
    :cond_2
    const/high16 v27, 0x42a00000    # 80.0f

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v27

    div-int v27, v25, v27

    move/from16 v0, v27

    int-to-float v3, v0

    .line 591
    .local v3, "avgNphotos":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->photos:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 592
    .local v17, "photosToProcess":I
    const/4 v4, 0x0

    .line 593
    .local v4, "curPhoto":I
    :goto_1
    if-lez v17, :cond_c

    .line 594
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 595
    .local v20, "ratios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 596
    .local v21, "ratiosCropped":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 598
    .local v16, "page":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;>;"
    move v5, v4

    .local v5, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->photos:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v5, v0, :cond_5

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->photos:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/vkontakte/android/Photo;

    .line 600
    .local v15, "p":Lcom/vkontakte/android/Photo;
    const/16 v27, 0x78

    move/from16 v0, v27

    invoke-virtual {v15, v0}, Lcom/vkontakte/android/Photo;->getImage(C)Lcom/vkontakte/android/Photo$Image;

    move-result-object v7

    .line 601
    .local v7, "im":Lcom/vkontakte/android/Photo$Image;
    if-nez v7, :cond_3

    .line 602
    const-string v27, "vk"

    const-string v28, "x image is null"

    invoke-static/range {v27 .. v28}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 606
    :cond_3
    iget v0, v7, Lcom/vkontakte/android/Photo$Image;->width:I

    move/from16 v27, v0

    if-lez v27, :cond_4

    iget v0, v7, Lcom/vkontakte/android/Photo$Image;->height:I

    move/from16 v27, v0

    if-lez v27, :cond_4

    .line 607
    iget v0, v7, Lcom/vkontakte/android/Photo$Image;->width:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    iget v0, v7, Lcom/vkontakte/android/Photo$Image;->height:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v27, v27, v28

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v27

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 608
    :cond_4
    const v27, 0x3f99999a    # 1.2f

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v27

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 610
    .end local v7    # "im":Lcom/vkontakte/android/Photo$Image;
    .end local v15    # "p":Lcom/vkontakte/android/Photo;
    :cond_5
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v27

    if-eqz v27, :cond_0

    .line 611
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Float;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Float;->floatValue()F

    move-result v19

    .local v19, "ratio":F
    const/high16 v27, 0x3f800000    # 1.0f

    move/from16 v0, v27

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 613
    .end local v19    # "ratio":F
    :cond_6
    move/from16 v0, v25

    int-to-float v12, v0

    .line 614
    .local v12, "max_w":F
    const/high16 v27, 0x40000000    # 2.0f

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v27

    move/from16 v0, v27

    int-to-float v11, v0

    .line 615
    .local v11, "margin_w":F
    const/high16 v27, 0x42a00000    # 80.0f

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v27

    div-int v27, v25, v27

    move/from16 v0, v27

    int-to-float v14, v0

    .line 616
    .local v14, "nphotos":F
    const/4 v5, 0x0

    :goto_5
    int-to-float v0, v5

    move/from16 v27, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    invoke-static {v14, v0}, Ljava/lang/Math;->min(FF)F

    move-result v28

    cmpg-float v27, v27, v28

    if-gez v27, :cond_9

    .line 617
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Float;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Float;->floatValue()F

    move-result v18

    .line 618
    .local v18, "r":F
    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v27, v0

    const-wide v29, 0x3feccccccccccccdL    # 0.9

    cmpg-double v27, v27, v29

    if-gez v27, :cond_7

    .line 619
    float-to-double v0, v14

    move-wide/from16 v27, v0

    const-wide v29, 0x3fd3333333333333L    # 0.3

    add-double v27, v27, v29

    move-wide/from16 v0, v27

    double-to-float v14, v0

    .line 621
    :cond_7
    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v27, v0

    const-wide v29, 0x3ff199999999999aL    # 1.1

    cmpg-double v27, v27, v29

    if-gtz v27, :cond_8

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v27, v0

    const-wide v29, 0x3feccccccccccccdL    # 0.9

    cmpl-double v27, v27, v29

    if-ltz v27, :cond_8

    .line 622
    float-to-double v0, v14

    move-wide/from16 v27, v0

    const-wide v29, 0x3fc999999999999aL    # 0.2

    add-double v27, v27, v29

    move-wide/from16 v0, v27

    double-to-float v14, v0

    .line 616
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 626
    .end local v18    # "r":F
    :cond_9
    const/16 v27, 0x0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v28

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v29

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->min(II)I

    move-result v28

    move-object/from16 v0, v21

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v12, v11}, Lcom/vkontakte/android/fragments/PhotoListFragment;->calculateMultiThumbsHeight(Ljava/util/List;FF)F

    move-result v10

    .line 628
    .local v10, "line_height_real":F
    const/high16 v27, 0x42a00000    # 80.0f

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-static {v10, v0}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 629
    .local v9, "line_height":F
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v27

    move/from16 v0, v27

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 630
    .local v13, "maxphotos":I
    const-string v27, "vk"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "maxphotos="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", pages size="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->layout:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", unsorted="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", num="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", all loaded="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->photos:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v27

    move/from16 v0, v27

    move/from16 v1, v17

    if-le v0, v1, :cond_a

    .line 636
    const/high16 v27, 0x42a00000    # 80.0f

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v27

    mul-int v27, v27, v13

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->round(F)I

    move-result v27

    move/from16 v0, v27

    int-to-float v12, v0

    .line 637
    const/16 v27, 0x0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v28

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v29

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->min(II)I

    move-result v28

    move-object/from16 v0, v21

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v12, v11}, Lcom/vkontakte/android/fragments/PhotoListFragment;->calculateMultiThumbsHeight(Ljava/util/List;FF)F

    move-result v10

    .line 638
    const-string v27, "vk"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "max_w is now "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    :cond_a
    const/4 v5, 0x0

    :goto_6
    if-ge v5, v13, :cond_b

    .line 642
    const/16 v27, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Float;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Float;->floatValue()F

    move-result v23

    .line 643
    .local v23, "thumb_ratio":F
    mul-float v27, v23, v10

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v26, v0

    .line 644
    .local v26, "width":I
    new-instance v8, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v8, v0, v1}, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;-><init>(Lcom/vkontakte/android/fragments/PhotoListFragment;Lcom/vkontakte/android/fragments/PhotoListFragment$1;)V

    .line 645
    .local v8, "layout":Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;
    move/from16 v0, v26

    iput v0, v8, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;->width:I

    .line 646
    float-to-int v0, v9

    move/from16 v27, v0

    move/from16 v0, v27

    iput v0, v8, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;->height:I

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->photos:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/vkontakte/android/Photo;

    move-object/from16 v0, v27

    iput-object v0, v8, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;->photo:Lcom/vkontakte/android/Photo;

    .line 648
    iput v4, v8, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;->index:I

    .line 649
    add-int/lit8 v4, v4, 0x1

    .line 650
    add-int/lit8 v17, v17, -0x1

    .line 651
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 653
    .end local v8    # "layout":Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;
    .end local v23    # "thumb_ratio":F
    .end local v26    # "width":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->layout:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 656
    .end local v5    # "i":I
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "line_height":F
    .end local v10    # "line_height_real":F
    .end local v11    # "margin_w":F
    .end local v12    # "max_w":F
    .end local v13    # "maxphotos":I
    .end local v14    # "nphotos":F
    .end local v16    # "page":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;>;"
    .end local v20    # "ratios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .end local v21    # "ratiosCropped":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->adapter:Lcom/vkontakte/android/fragments/PhotoListFragment$PhotosAdapter;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotosAdapter;->notifyDataSetChanged()V

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    move-object/from16 v27, v0

    new-instance v28, Lcom/vkontakte/android/fragments/PhotoListFragment$9;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/PhotoListFragment$9;-><init>(Lcom/vkontakte/android/fragments/PhotoListFragment;)V

    const-wide/16 v29, 0x64

    invoke-virtual/range {v27 .. v30}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method private loadData()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/16 v1, -0x2328

    const/16 v4, 0xc8

    .line 454
    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->dataLoading:Z

    .line 455
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget v0, v0, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    if-le v0, v1, :cond_1

    .line 456
    new-instance v0, Lcom/vkontakte/android/api/PhotosGet;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget v1, v1, Lcom/vkontakte/android/api/PhotoAlbum;->oid:I

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget v2, v2, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->photos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/api/PhotosGet;-><init>(IIII)V

    new-instance v1, Lcom/vkontakte/android/fragments/PhotoListFragment$6;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PhotoListFragment$6;-><init>(Lcom/vkontakte/android/fragments/PhotoListFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PhotosGet;->setCallback(Lcom/vkontakte/android/api/PhotosGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 574
    :cond_0
    :goto_0
    return-void

    .line 494
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget v0, v0, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    if-ne v0, v1, :cond_2

    .line 495
    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->dataLoading:Z

    .line 496
    new-instance v0, Lcom/vkontakte/android/api/PhotosGetUserPhotos;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget v1, v1, Lcom/vkontakte/android/api/PhotoAlbum;->oid:I

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v1, v2, v4}, Lcom/vkontakte/android/api/PhotosGetUserPhotos;-><init>(III)V

    new-instance v1, Lcom/vkontakte/android/fragments/PhotoListFragment$7;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PhotoListFragment$7;-><init>(Lcom/vkontakte/android/fragments/PhotoListFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PhotosGetUserPhotos;->setCallback(Lcom/vkontakte/android/api/PhotosGetUserPhotos$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    .line 533
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget v0, v0, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    const/16 v1, -0x2329

    if-ne v0, v1, :cond_0

    .line 534
    new-instance v0, Lcom/vkontakte/android/api/FaveGetPhotos;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1, v4}, Lcom/vkontakte/android/api/FaveGetPhotos;-><init>(II)V

    new-instance v1, Lcom/vkontakte/android/fragments/PhotoListFragment$8;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PhotoListFragment$8;-><init>(Lcom/vkontakte/android/fragments/PhotoListFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/FaveGetPhotos;->setCallback(Lcom/vkontakte/android/api/FaveGetPhotos$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method private sum(Ljava/util/List;)F
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .prologue
    .line 704
    .local p1, "a":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/4 v2, 0x0

    .line 705
    .local v2, "sum":F
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .local v0, "f":F
    add-float/2addr v2, v0

    goto :goto_0

    .line 706
    .end local v0    # "f":F
    :cond_0
    return v2
.end method

.method private updateCount()V
    .locals 4

    .prologue
    const v1, 0x7f080109

    .line 361
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget v0, v0, Lcom/vkontakte/android/api/PhotoAlbum;->numPhotos:I

    if-lez v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f070001

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget v2, v2, Lcom/vkontakte/android/api/PhotoAlbum;->numPhotos:I

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d01aa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private updateCover()V
    .locals 2

    .prologue
    .line 305
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/fragments/PhotoListFragment$4;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PhotoListFragment$4;-><init>(Lcom/vkontakte/android/fragments/PhotoListFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 358
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    .line 427
    const/16 v5, 0xf32

    if-ne p1, v5, :cond_3

    const/4 v5, -0x1

    if-ne p2, v5, :cond_3

    .line 428
    const-string v5, "files"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 429
    const-string v5, "files"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 430
    .local v1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 431
    .local v0, "file":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 432
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "file"

    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 433
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 434
    .local v4, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "aid"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget v7, v7, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget v5, v5, Lcom/vkontakte/android/api/PhotoAlbum;->oid:I

    if-gez v5, :cond_0

    const-string v5, "gid"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget v7, v7, Lcom/vkontakte/android/api/PhotoAlbum;->oid:I

    neg-int v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    :cond_0
    const-string v5, "req_params"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 437
    const-string v5, "type"

    invoke-virtual {v3, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 438
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 441
    .end local v0    # "file":Ljava/lang/String;
    .end local v1    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/vkontakte/android/SendSinglePhotoActivity;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 442
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v5, "file"

    const-string v6, "file"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    const-string v5, "show_hint"

    invoke-virtual {v3, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 444
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 445
    .restart local v4    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "aid"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget v7, v7, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget v5, v5, Lcom/vkontakte/android/api/PhotoAlbum;->oid:I

    if-gez v5, :cond_2

    const-string v5, "gid"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget v7, v7, Lcom/vkontakte/android/api/PhotoAlbum;->oid:I

    neg-int v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    :cond_2
    const-string v5, "req_params"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 448
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/PhotoListFragment;->startActivity(Landroid/content/Intent;)V

    .line 451
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 11
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    const v10, 0x7f08010a

    const/16 v9, 0x13

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 153
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 155
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020021

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-direct {v1, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->actionBarBg:Landroid/graphics/drawable/LayerDrawable;

    .line 157
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "nohead"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 158
    iget-boolean v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->useFadingActionBar:Z

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->actionBarBg:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 161
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/ui/ActionBarHacks;->getActionBarOverlay(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    .line 162
    .local v0, "overlay":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 163
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "overlay":Landroid/view/View;
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->actionBarBg:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 167
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v9, :cond_1

    .line 168
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 172
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "album"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/PhotoAlbum;

    iput-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    .line 173
    const v1, 0x7f03005c

    invoke-static {p1, v1, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->headerView:Landroid/view/View;

    .line 174
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->headerView:Landroid/view/View;

    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    const/4 v5, -0x1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v9, :cond_a

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v6, "nohead"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {}, Lcom/vkontakte/android/ViewUtils;->getStatusBarHeight()I

    move-result v1

    :goto_0
    add-int/lit16 v1, v1, 0xe6

    int-to-float v1, v1

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-direct {v4, v5, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->contentView:Landroid/widget/FrameLayout;

    .line 176
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->contentWrap:Landroid/widget/FrameLayout;

    .line 177
    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    .line 182
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->contentView:Landroid/widget/FrameLayout;

    const v3, -0xe7e7e8

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 183
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 184
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 186
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    const/high16 v3, 0x2000000

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 187
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget v1, v1, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    const/16 v3, -0x2329

    if-eq v1, v3, :cond_b

    .line 188
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->headerView:Landroid/view/View;

    invoke-virtual {v1, v3, v7, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 198
    :goto_1
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget v1, v1, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    const/16 v3, -0x2328

    if-le v1, v3, :cond_2

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget v1, v1, Lcom/vkontakte/android/api/PhotoAlbum;->numPhotos:I

    const/16 v3, 0xc8

    if-le v1, v3, :cond_3

    .line 199
    :cond_2
    new-instance v1, Lcom/vkontakte/android/ui/LoadMoreFooterView;

    invoke-direct {v1, p1}, Lcom/vkontakte/android/ui/LoadMoreFooterView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    .line 200
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    invoke-virtual {v1, v3, v7, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 201
    iput-boolean v8, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->moreAvailable:Z

    .line 202
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 204
    :cond_3
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "album"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget v3, v3, Lcom/vkontakte/android/api/PhotoAlbum;->oid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget v3, v3, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/ActivityUtils;->setBeamLink(Landroid/app/Activity;Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    new-instance v2, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotosAdapter;

    invoke-direct {v2, p0, v7}, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotosAdapter;-><init>(Lcom/vkontakte/android/fragments/PhotoListFragment;Lcom/vkontakte/android/fragments/PhotoListFragment$1;)V

    iput-object v2, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->adapter:Lcom/vkontakte/android/fragments/PhotoListFragment$PhotosAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 206
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->contentWrap:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 207
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->emptyView:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 208
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->contentWrap:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 209
    :cond_4
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->contentWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 211
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->progress:Landroid/widget/ProgressBar;

    .line 212
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 213
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->progress:Landroid/widget/ProgressBar;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v4, 0x42340000    # 45.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    const/high16 v5, 0x42340000    # 45.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    const/16 v6, 0x11

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->contentWrap:Landroid/widget/FrameLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 216
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "nohead"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 217
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget-object v1, v1, Lcom/vkontakte/android/api/PhotoAlbum;->title:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 218
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v9, :cond_5

    .line 219
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->statusBarBG:Landroid/view/View;

    .line 220
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->statusBarBG:Landroid/view/View;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 221
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->statusBarBG:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 222
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->contentWrap:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->statusBarBG:Landroid/view/View;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-static {}, Lcom/vkontakte/android/ViewUtils;->getStatusBarHeight()I

    move-result v5

    const/16 v6, 0x30

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    :cond_5
    new-instance v1, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v2, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoImagesAdapter;

    invoke-direct {v2, p0, v7}, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoImagesAdapter;-><init>(Lcom/vkontakte/android/fragments/PhotoListFragment;Lcom/vkontakte/android/fragments/PhotoListFragment$1;)V

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    new-instance v4, Lcom/vkontakte/android/fragments/PhotoListFragment$2;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/fragments/PhotoListFragment$2;-><init>(Lcom/vkontakte/android/fragments/PhotoListFragment;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 262
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->headerView:Landroid/view/View;

    const v2, 0x7f080108

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/vkontakte/android/ui/Fonts;->getRobotoLight()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 263
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->headerView:Landroid/view/View;

    const v2, 0x7f080109

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/vkontakte/android/ui/Fonts;->getRobotoLight()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 264
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->headerView:Landroid/view/View;

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/vkontakte/android/ui/Fonts;->getRobotoLight()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 265
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->headerView:Landroid/view/View;

    const v2, 0x7f080108

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget-object v2, v2, Lcom/vkontakte/android/api/PhotoAlbum;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->updateCount()V

    .line 268
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->headerView:Landroid/view/View;

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget-object v2, v2, Lcom/vkontakte/android/api/PhotoAlbum;->descr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget-object v1, v1, Lcom/vkontakte/android/api/PhotoAlbum;->descr:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget-object v1, v1, Lcom/vkontakte/android/api/PhotoAlbum;->descr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_7

    .line 270
    :cond_6
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->headerView:Landroid/view/View;

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 272
    :cond_7
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f030030

    invoke-static {v1, v2, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ui/ErrorView;

    iput-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->error:Lcom/vkontakte/android/ui/ErrorView;

    .line 273
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->error:Lcom/vkontakte/android/ui/ErrorView;

    new-instance v2, Lcom/vkontakte/android/fragments/PhotoListFragment$3;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/PhotoListFragment$3;-><init>(Lcom/vkontakte/android/fragments/PhotoListFragment;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/ErrorView;->setOnRetryListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->error:Lcom/vkontakte/android/ui/ErrorView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 282
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->error:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 284
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->updateCover()V

    .line 286
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->loadData()V

    .line 288
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget v1, v1, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    if-lez v1, :cond_8

    .line 289
    invoke-virtual {p0, v8}, Lcom/vkontakte/android/fragments/PhotoListFragment;->setHasOptionsMenu(Z)V

    .line 291
    :cond_8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_9

    .line 302
    :cond_9
    return-void

    :cond_a
    move v1, v2

    .line 174
    goto/16 :goto_0

    .line 191
    :cond_b
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->emptyView:Landroid/widget/TextView;

    .line 192
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->emptyView:Landroid/widget/TextView;

    const v3, 0x7f0e0012

    invoke-virtual {v1, p1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 193
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->emptyView:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 194
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->emptyView:Landroid/widget/TextView;

    const v3, 0x7f0d01aa

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 195
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->emptyView:Landroid/widget/TextView;

    const v3, -0x7f000001

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 196
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto/16 :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 22
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 827
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 828
    .local v17, "pos":I
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "select"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 829
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 830
    .local v11, "intent":Landroid/content/Intent;
    const-string v3, "photo"

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->photos:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v11, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 831
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v1, v3, v11}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 832
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 878
    .end local v11    # "intent":Landroid/content/Intent;
    .end local p1    # "v":Landroid/view/View;
    :goto_0
    return-void

    .line 835
    .restart local p1    # "v":Landroid/view/View;
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/vkontakte/android/Photo;

    .line 836
    .local v16, "p":Lcom/vkontakte/android/Photo;
    const/4 v1, 0x0

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/vkontakte/android/Photo;->viewBounds:Landroid/graphics/Rect;

    goto :goto_1

    .line 838
    .end local v16    # "p":Lcom/vkontakte/android/Photo;
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v9

    .local v9, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    if-gt v9, v1, :cond_6

    .line 839
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    if-lt v9, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->layout:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v1, v3

    if-lt v9, v1, :cond_3

    .line 838
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 840
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->layout:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    sub-int v3, v9, v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    .line 841
    .local v14, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v9, v3

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 842
    .local v12, "item":Landroid/view/ViewGroup;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v1, v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getHeight()I

    move-result v7

    .line 843
    .local v7, "actionBarHeight":I
    :goto_3
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_4
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v13, v1, :cond_2

    .line 844
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;

    .line 845
    .local v15, "lt":Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;
    const/4 v1, 0x2

    new-array v0, v1, [I

    move-object/from16 v19, v0

    fill-array-data v19, :array_0

    .line 846
    .local v19, "vpos":[I
    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 847
    const/4 v1, 0x0

    aget v3, v19, v1

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    aput v3, v19, v1

    .line 848
    const/4 v1, 0x1

    aget v3, v19, v1

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    aput v3, v19, v1

    .line 849
    iget-object v1, v15, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;->photo:Lcom/vkontakte/android/Photo;

    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    aget v4, v19, v4

    const/4 v5, 0x1

    aget v5, v19, v5

    const/4 v6, 0x0

    aget v6, v19, v6

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getWidth()I

    move-result v20

    add-int v6, v6, v20

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getPaddingRight()I

    move-result v20

    sub-int v6, v6, v20

    const/16 v20, 0x1

    aget v20, v19, v20

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getHeight()I

    move-result v21

    add-int v20, v20, v21

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getPaddingBottom()I

    move-result v21

    sub-int v20, v20, v21

    move/from16 v0, v20

    invoke-direct {v3, v4, v5, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, v1, Lcom/vkontakte/android/Photo;->viewBounds:Landroid/graphics/Rect;

    .line 850
    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    invoke-static {v1, v3}, Lcom/vkontakte/android/ViewUtils;->getViewOffset(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    .line 851
    .local v18, "top":I
    sub-int v18, v18, v7

    .line 852
    iget-object v3, v15, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;->photo:Lcom/vkontakte/android/Photo;

    if-gez v18, :cond_5

    move/from16 v0, v18

    neg-int v1, v0

    :goto_5
    iput v1, v3, Lcom/vkontakte/android/Photo;->viewClipTop:I

    .line 843
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 842
    .end local v7    # "actionBarHeight":I
    .end local v13    # "j":I
    .end local v15    # "lt":Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;
    .end local v18    # "top":I
    .end local v19    # "vpos":[I
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 852
    .restart local v7    # "actionBarHeight":I
    .restart local v13    # "j":I
    .restart local v15    # "lt":Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;
    .restart local v18    # "top":I
    .restart local v19    # "vpos":[I
    :cond_5
    const/4 v1, 0x0

    goto :goto_5

    .line 855
    .end local v7    # "actionBarHeight":I
    .end local v12    # "item":Landroid/view/ViewGroup;
    .end local v13    # "j":I
    .end local v14    # "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;>;"
    .end local v15    # "lt":Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;
    .end local v18    # "top":I
    .end local v19    # "vpos":[I
    :cond_6
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 856
    .local v2, "args":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v3, 0x12c

    if-gt v1, v3, :cond_9

    .line 857
    const-string v1, "list"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 862
    :goto_6
    const-string v1, "orientation"

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 863
    const-string v1, "position"

    move/from16 v0, v17

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 864
    const-string v1, "bg_color"

    const v3, -0xe7e7e8

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 865
    const-string v1, "title"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget-object v3, v3, Lcom/vkontakte/android/api/PhotoAlbum;->title:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 866
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 867
    .local v8, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_7

    instance-of v1, v8, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_7

    .line 868
    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    .end local v8    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->sharedThumb:Landroid/graphics/Bitmap;

    .line 870
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget v3, v3, Lcom/vkontakte/android/api/PhotoAlbum;->numPhotos:I

    if-ge v1, v3, :cond_8

    .line 871
    const-string v1, "total"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget v3, v3, Lcom/vkontakte/android/api/PhotoAlbum;->numPhotos:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 872
    const-string v1, "aid"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget v3, v3, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 873
    const-string v1, "oid"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget v3, v3, Lcom/vkontakte/android/api/PhotoAlbum;->oid:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 875
    :cond_8
    const-string v1, "from_album"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget v3, v3, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 876
    const-string v1, "from_album_oid"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget v3, v3, Lcom/vkontakte/android/api/PhotoAlbum;->oid:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 877
    const-string v1, "PhotoViewerFragment"

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-static/range {v1 .. v6}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;ZII)V

    goto/16 :goto_0

    .line 859
    .restart local p1    # "v":Landroid/view/View;
    :cond_9
    const-string v1, "shared_list"

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 860
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->photos:Ljava/util/ArrayList;

    sput-object v1, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->sharedList:Ljava/util/ArrayList;

    goto/16 :goto_6

    .line 845
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "cfg"    # Landroid/content/res/Configuration;

    .prologue
    .line 419
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    new-instance v1, Lcom/vkontakte/android/fragments/PhotoListFragment$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PhotoListFragment$5;-><init>(Lcom/vkontakte/android/fragments/PhotoListFragment;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 424
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "s"    # Landroid/os/Bundle;

    .prologue
    .line 368
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 369
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 370
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.vkontakte.android.PHOTO_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 371
    const-string v1, "com.vkontakte.android.PHOTO_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 372
    const-string v1, "com.vkontakte.android.UPDATE_PHOTO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 373
    const-string v1, "com.vkontakte.android.UPDATE_ALBUM_COVER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 374
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->receiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.vkontakte.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 375
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const v3, 0x7f0801fa

    .line 404
    const v0, 0x7f0f0008

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 405
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget v0, v0, Lcom/vkontakte/android/api/PhotoAlbum;->oid:I

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget-boolean v0, v0, Lcom/vkontakte/android/api/PhotoAlbum;->canUpload:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "select"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 406
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0d0002

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 407
    return-void

    .line 405
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 711
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->contentView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 388
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 389
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 390
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 391
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 3

    .prologue
    .line 378
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "nohead"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/ui/ActionBarHacks;->getActionBarOverlay(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    .line 380
    .local v0, "overlay":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 381
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "overlay":Landroid/view/View;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 384
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 385
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 410
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0801fa

    if-ne v1, v2, :cond_0

    .line 411
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/ImagePickerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 412
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "allow_album"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 413
    const/16 v1, 0xf32

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/fragments/PhotoListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 415
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 394
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 395
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->deactivate()V

    .line 396
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 399
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 400
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->activate()V

    .line 401
    return-void
.end method
