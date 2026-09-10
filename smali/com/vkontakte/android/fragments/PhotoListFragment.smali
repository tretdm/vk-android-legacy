.class public Lcom/vkontakte/android/fragments/PhotoListFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "PhotoListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoImagesAdapter;,
        Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;,
        Lcom/vkontakte/android/fragments/PhotoListFragment$PhotosAdapter;
    }
.end annotation


# static fields
.field private static final UPLOAD_RESULT:I = 0xf32


# instance fields
.field private actionBarBg:Landroid/graphics/drawable/Drawable;

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

.field private useFadingActionBar:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->photos:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->layout:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->reusableImageViews:Ljava/util/ArrayList;

    .line 91
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

    .line 95
    new-instance v0, Lcom/vkontakte/android/fragments/PhotoListFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/PhotoListFragment$1;-><init>(Lcom/vkontakte/android/fragments/PhotoListFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 148
    return-void

    .line 91
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/PhotoListFragment;)Lcom/vkontakte/android/api/PhotoAlbum;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->photos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/fragments/PhotoListFragment;)Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->dataLoading:Z

    return v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/fragments/PhotoListFragment;)V
    .locals 0

    .prologue
    .line 435
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->loadData()V

    return-void
.end method

.method static synthetic access$12(Lcom/vkontakte/android/fragments/PhotoListFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->headerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$13(Lcom/vkontakte/android/fragments/PhotoListFragment;)Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->useFadingActionBar:Z

    return v0
.end method

.method static synthetic access$14(Lcom/vkontakte/android/fragments/PhotoListFragment;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->actionBarBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$15(Lcom/vkontakte/android/fragments/PhotoListFragment;)Lcom/vkontakte/android/ui/ErrorView;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->error:Lcom/vkontakte/android/ui/ErrorView;

    return-object v0
.end method

.method static synthetic access$16(Lcom/vkontakte/android/fragments/PhotoListFragment;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$17(Lcom/vkontakte/android/fragments/PhotoListFragment;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$18(Lcom/vkontakte/android/fragments/PhotoListFragment;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->contentWrap:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$19(Lcom/vkontakte/android/fragments/PhotoListFragment;)V
    .locals 0

    .prologue
    .line 644
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->animate()V

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/fragments/PhotoListFragment;)V
    .locals 0

    .prologue
    .line 558
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->layoutPhotos()V

    return-void
.end method

.method static synthetic access$20(Lcom/vkontakte/android/fragments/PhotoListFragment;Z)V
    .locals 0

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->moreAvailable:Z

    return-void
.end method

.method static synthetic access$21(Lcom/vkontakte/android/fragments/PhotoListFragment;Z)V
    .locals 0

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->dataLoading:Z

    return-void
.end method

.method static synthetic access$22(Lcom/vkontakte/android/fragments/PhotoListFragment;)Lcom/vkontakte/android/ui/LoadMoreFooterView;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/fragments/PhotoListFragment;)V
    .locals 0

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->updateCount()V

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/fragments/PhotoListFragment;)V
    .locals 0

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->updateCover()V

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->layout:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/fragments/PhotoListFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->reusableImageViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/fragments/PhotoListFragment;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/fragments/PhotoListFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/fragments/PhotoListFragment;)Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->moreAvailable:Z

    return v0
.end method

.method private animate()V
    .locals 12

    .prologue
    .line 646
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-lt v7, v8, :cond_2

    .line 647
    iget-object v7, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->headerView:Landroid/view/View;

    const-string v8, "alpha"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_0

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v8, 0xc8

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 648
    .local v4, "headerAnim":Landroid/animation/ObjectAnimator;
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 649
    .local v6, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 650
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 651
    .local v1, "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v7, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    .local v5, "i":I
    :goto_0
    iget-object v7, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    if-lt v5, v7, :cond_0

    .line 662
    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 663
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    .line 678
    .end local v1    # "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v4    # "headerAnim":Landroid/animation/ObjectAnimator;
    .end local v6    # "set":Landroid/animation/AnimatorSet;
    :goto_1
    return-void

    .line 652
    .restart local v1    # "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .restart local v4    # "headerAnim":Landroid/animation/ObjectAnimator;
    .restart local v6    # "set":Landroid/animation/AnimatorSet;
    :cond_0
    iget-object v7, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v7, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 653
    .local v2, "ch":Landroid/view/View;
    iget-object v7, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getHeight()I

    move-result v7

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v2, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 654
    const-string v7, "translationY"

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v10}, Landroid/widget/ListView;->getHeight()I

    move-result v10

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    aput v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput v10, v8, v9

    invoke-static {v2, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 655
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    const/16 v3, 0x12c

    .line 656
    .local v3, "duration":I
    int-to-long v7, v3

    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 657
    iget-object v7, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v7

    sub-int v7, v5, v7

    mul-int/lit16 v8, v7, 0x96

    if-lez v5, :cond_1

    const/4 v7, 0x0

    :goto_2
    add-int/2addr v7, v8

    int-to-long v7, v7

    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 658
    const-string v7, "vk"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "start delay "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getStartDelay()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 660
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 657
    :cond_1
    const/16 v7, 0xc8

    goto :goto_2

    .line 665
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    .end local v1    # "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v2    # "ch":Landroid/view/View;
    .end local v3    # "duration":I
    .end local v4    # "headerAnim":Landroid/animation/ObjectAnimator;
    .end local v5    # "i":I
    .end local v6    # "set":Landroid/animation/AnimatorSet;
    :cond_2
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v4, v7, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 666
    .local v4, "headerAnim":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v7, 0xc8

    invoke-virtual {v4, v7, v8}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 667
    iget-object v7, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    .restart local v5    # "i":I
    :goto_3
    iget-object v7, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    if-lt v5, v7, :cond_3

    .line 676
    iget-object v7, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->headerView:Landroid/view/View;

    invoke-virtual {v7, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    .line 668
    :cond_3
    iget-object v7, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v7, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 669
    .restart local v2    # "ch":Landroid/view/View;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getHeight()I

    move-result v9

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    const/4 v10, 0x0

    invoke-direct {v0, v7, v8, v9, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 670
    .local v0, "anim":Landroid/view/animation/TranslateAnimation;
    const/16 v3, 0x12c

    .line 671
    .restart local v3    # "duration":I
    int-to-long v7, v3

    invoke-virtual {v0, v7, v8}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 672
    iget-object v7, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v7

    sub-int v7, v5, v7

    mul-int/lit16 v8, v7, 0x96

    if-lez v5, :cond_4

    const/4 v7, 0x0

    :goto_4
    add-int/2addr v7, v8

    int-to-long v7, v7

    invoke-virtual {v0, v7, v8}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 673
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v7}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 674
    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 667
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 672
    :cond_4
    const/16 v7, 0xc8

    goto :goto_4

    .line 647
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
    .line 681
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
    .locals 30

    .prologue
    .line 559
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v26

    if-nez v26, :cond_1

    .line 642
    :cond_0
    :goto_0
    return-void

    .line 560
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->deactivate()V

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->layout:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->clear()V

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/ListView;->getWidth()I

    move-result v26

    const/high16 v27, 0x40000000    # 2.0f

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v27

    add-int v24, v26, v27

    .line 563
    .local v24, "viewWidth":I
    const-string v26, "vk"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "ViewWidth="

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const/high16 v26, 0x40a00000    # 5.0f

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v26

    move/from16 v0, v24

    move/from16 v1, v26

    if-gt v0, v1, :cond_2

    .line 565
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v23

    .line 566
    .local v23, "v":Landroid/view/View;
    new-instance v21, Landroid/graphics/Rect;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Rect;-><init>()V

    .line 567
    .local v21, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 568
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->width()I

    move-result v24

    .line 569
    const-string v26, "vk"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "NEW ViewWidth="

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    .end local v21    # "rect":Landroid/graphics/Rect;
    .end local v23    # "v":Landroid/view/View;
    :cond_2
    const/high16 v26, 0x42a00000    # 80.0f

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v26

    div-int v26, v24, v26

    move/from16 v0, v26

    int-to-float v3, v0

    .line 573
    .local v3, "avgNphotos":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->photos:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 574
    .local v16, "photosToProcess":I
    const/4 v4, 0x0

    .line 575
    .local v4, "curPhoto":I
    :goto_1
    if-gtz v16, :cond_3

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->adapter:Lcom/vkontakte/android/fragments/PhotoListFragment$PhotosAdapter;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotosAdapter;->notifyDataSetChanged()V

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    move-object/from16 v26, v0

    new-instance v27, Lcom/vkontakte/android/fragments/PhotoListFragment$9;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/PhotoListFragment$9;-><init>(Lcom/vkontakte/android/fragments/PhotoListFragment;)V

    .line 641
    const-wide/16 v28, 0x64

    .line 639
    invoke-virtual/range {v26 .. v29}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 576
    :cond_3
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 577
    .local v19, "ratios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 578
    .local v20, "ratiosCropped":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 580
    .local v15, "page":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;>;"
    move v5, v4

    .local v5, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->photos:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-lt v5, v0, :cond_5

    .line 592
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-eqz v26, :cond_0

    .line 593
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_3
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-nez v26, :cond_8

    .line 595
    move/from16 v0, v24

    int-to-float v11, v0

    .line 596
    .local v11, "max_w":F
    const/high16 v26, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v26

    move/from16 v0, v26

    int-to-float v10, v0

    .line 597
    .local v10, "margin_w":F
    const/high16 v26, 0x42a00000    # 80.0f

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v26

    div-int v26, v24, v26

    move/from16 v0, v26

    int-to-float v13, v0

    .line 598
    .local v13, "nphotos":F
    const/4 v5, 0x0

    :goto_4
    int-to-float v0, v5

    move/from16 v26, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-static {v13, v0}, Ljava/lang/Math;->min(FF)F

    move-result v27

    cmpg-float v26, v26, v27

    if-ltz v26, :cond_9

    .line 608
    const/16 v26, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v27

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v28

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->min(II)I

    move-result v27

    move-object/from16 v0, v20

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v11, v10}, Lcom/vkontakte/android/fragments/PhotoListFragment;->calculateMultiThumbsHeight(Ljava/util/List;FF)F

    move-result v9

    .line 610
    .local v9, "line_height_real":F
    const/high16 v26, 0x42a00000    # 80.0f

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v9, v0}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 611
    .local v8, "line_height":F
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v26

    move/from16 v0, v26

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 612
    .local v12, "maxphotos":I
    const-string v26, "vk"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "maxphotos="

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", pages size="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->layout:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", unsorted="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", num="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", all loaded="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->photos:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v26

    move/from16 v0, v26

    move/from16 v1, v16

    if-le v0, v1, :cond_4

    .line 618
    const/high16 v26, 0x42a00000    # 80.0f

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v26

    mul-int v26, v26, v12

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->round(F)I

    move-result v26

    move/from16 v0, v26

    int-to-float v11, v0

    .line 619
    const/16 v26, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v27

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v28

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->min(II)I

    move-result v27

    move-object/from16 v0, v20

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v11, v10}, Lcom/vkontakte/android/fragments/PhotoListFragment;->calculateMultiThumbsHeight(Ljava/util/List;FF)F

    move-result v9

    .line 620
    const-string v26, "vk"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "max_w is now "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    :cond_4
    const/4 v5, 0x0

    :goto_5
    if-lt v5, v12, :cond_c

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->layout:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 581
    .end local v8    # "line_height":F
    .end local v9    # "line_height_real":F
    .end local v10    # "margin_w":F
    .end local v11    # "max_w":F
    .end local v12    # "maxphotos":I
    .end local v13    # "nphotos":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->photos:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vkontakte/android/Photo;

    .line 582
    .local v14, "p":Lcom/vkontakte/android/Photo;
    const/16 v26, 0x78

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Lcom/vkontakte/android/Photo;->getImage(C)Lcom/vkontakte/android/Photo$Image;

    move-result-object v6

    .line 583
    .local v6, "im":Lcom/vkontakte/android/Photo$Image;
    if-nez v6, :cond_6

    .line 584
    const-string v26, "vk"

    const-string v27, "x image is null"

    invoke-static/range {v26 .. v27}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 588
    :cond_6
    iget v0, v6, Lcom/vkontakte/android/Photo$Image;->width:I

    move/from16 v26, v0

    if-lez v26, :cond_7

    iget v0, v6, Lcom/vkontakte/android/Photo$Image;->height:I

    move/from16 v26, v0

    if-lez v26, :cond_7

    .line 589
    iget v0, v6, Lcom/vkontakte/android/Photo$Image;->width:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    iget v0, v6, Lcom/vkontakte/android/Photo$Image;->height:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v26, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 590
    :cond_7
    const v26, 0x3f99999a    # 1.2f

    invoke-static/range {v26 .. v26}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 593
    .end local v6    # "im":Lcom/vkontakte/android/Photo$Image;
    .end local v14    # "p":Lcom/vkontakte/android/Photo;
    :cond_8
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Float;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v18

    .local v18, "ratio":F
    const/high16 v26, 0x3f800000    # 1.0f

    move/from16 v0, v26

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 599
    .end local v18    # "ratio":F
    .restart local v10    # "margin_w":F
    .restart local v11    # "max_w":F
    .restart local v13    # "nphotos":F
    :cond_9
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Float;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v17

    .line 600
    .local v17, "r":F
    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x3feccccccccccccdL    # 0.9

    cmpg-double v26, v26, v28

    if-gez v26, :cond_a

    .line 601
    float-to-double v0, v13

    move-wide/from16 v26, v0

    const-wide v28, 0x3fd3333333333333L    # 0.3

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v13, v0

    .line 603
    :cond_a
    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x3ff199999999999aL    # 1.1

    cmpg-double v26, v26, v28

    if-gtz v26, :cond_b

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x3feccccccccccccdL    # 0.9

    cmpl-double v26, v26, v28

    if-ltz v26, :cond_b

    .line 604
    float-to-double v0, v13

    move-wide/from16 v26, v0

    const-wide v28, 0x3fc999999999999aL    # 0.2

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v13, v0

    .line 598
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    .line 624
    .end local v17    # "r":F
    .restart local v8    # "line_height":F
    .restart local v9    # "line_height_real":F
    .restart local v12    # "maxphotos":I
    :cond_c
    const/16 v26, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Float;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v22

    .line 625
    .local v22, "thumb_ratio":F
    mul-float v26, v22, v9

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v25, v0

    .line 626
    .local v25, "width":I
    new-instance v7, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v7, v0, v1}, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;-><init>(Lcom/vkontakte/android/fragments/PhotoListFragment;Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;)V

    .line 627
    .local v7, "layout":Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;
    move/from16 v0, v25

    iput v0, v7, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;->width:I

    .line 628
    float-to-int v0, v8

    move/from16 v26, v0

    move/from16 v0, v26

    iput v0, v7, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;->height:I

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->photos:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/vkontakte/android/Photo;

    move-object/from16 v0, v26

    iput-object v0, v7, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;->photo:Lcom/vkontakte/android/Photo;

    .line 630
    iput v4, v7, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;->index:I

    .line 631
    add-int/lit8 v4, v4, 0x1

    .line 632
    add-int/lit8 v16, v16, -0x1

    .line 633
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_5
.end method

.method private loadData()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/16 v1, -0x2328

    const/16 v4, 0xc8

    .line 436
    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->dataLoading:Z

    .line 437
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget v0, v0, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    if-le v0, v1, :cond_1

    .line 438
    new-instance v0, Lcom/vkontakte/android/api/PhotosGet;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget v1, v1, Lcom/vkontakte/android/api/PhotoAlbum;->oid:I

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget v2, v2, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->photos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/api/PhotosGet;-><init>(IIII)V

    .line 439
    new-instance v1, Lcom/vkontakte/android/fragments/PhotoListFragment$6;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PhotoListFragment$6;-><init>(Lcom/vkontakte/android/fragments/PhotoListFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PhotosGet;->setCallback(Lcom/vkontakte/android/api/PhotosGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 474
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 438
    iput-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 556
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget v0, v0, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    if-ne v0, v1, :cond_2

    .line 477
    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->dataLoading:Z

    .line 478
    new-instance v0, Lcom/vkontakte/android/api/PhotosGetUserPhotos;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget v1, v1, Lcom/vkontakte/android/api/PhotoAlbum;->oid:I

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v1, v2, v4}, Lcom/vkontakte/android/api/PhotosGetUserPhotos;-><init>(III)V

    .line 479
    new-instance v1, Lcom/vkontakte/android/fragments/PhotoListFragment$7;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PhotoListFragment$7;-><init>(Lcom/vkontakte/android/fragments/PhotoListFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PhotosGetUserPhotos;->setCallback(Lcom/vkontakte/android/api/PhotosGetUserPhotos$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 514
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 478
    iput-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    .line 515
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget v0, v0, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    const/16 v1, -0x2329

    if-ne v0, v1, :cond_0

    .line 516
    new-instance v0, Lcom/vkontakte/android/api/FaveGetPhotos;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1, v4}, Lcom/vkontakte/android/api/FaveGetPhotos;-><init>(II)V

    .line 517
    new-instance v1, Lcom/vkontakte/android/fragments/PhotoListFragment$8;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PhotoListFragment$8;-><init>(Lcom/vkontakte/android/fragments/PhotoListFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/FaveGetPhotos;->setCallback(Lcom/vkontakte/android/api/FaveGetPhotos$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 553
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 516
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
    .line 684
    .local p1, "a":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/4 v1, 0x0

    .line 685
    .local v1, "sum":F
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 686
    return v1

    .line 685
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .local v0, "f":F
    add-float/2addr v1, v0

    goto :goto_0
.end method

.method private updateCount()V
    .locals 4

    .prologue
    const v1, 0x7f090127

    .line 343
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget v0, v0, Lcom/vkontakte/android/api/PhotoAlbum;->numPhotos:I

    if-lez v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d0014

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget v2, v2, Lcom/vkontakte/android/api/PhotoAlbum;->numPhotos:I

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    :goto_0
    return-void

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0800db

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private updateCover()V
    .locals 2

    .prologue
    .line 287
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/fragments/PhotoListFragment$4;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PhotoListFragment$4;-><init>(Lcom/vkontakte/android/fragments/PhotoListFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 339
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 340
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

    .line 409
    const/16 v4, 0xf32

    if-ne p1, v4, :cond_0

    const/4 v4, -0x1

    if-ne p2, v4, :cond_0

    .line 410
    const-string v4, "files"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 411
    const-string v4, "files"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 412
    .local v1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 433
    .end local v1    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_1
    return-void

    .line 412
    .restart local v1    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 413
    .local v0, "file":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 414
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "file"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 416
    .local v3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "aid"

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget v7, v7, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget v5, v5, Lcom/vkontakte/android/api/PhotoAlbum;->oid:I

    if-gez v5, :cond_2

    const-string v5, "gid"

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget v7, v7, Lcom/vkontakte/android/api/PhotoAlbum;->oid:I

    neg-int v7, v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    :cond_2
    const-string v5, "req_params"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 419
    const-string v5, "type"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 420
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 423
    .end local v0    # "file":Ljava/lang/String;
    .end local v1    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/vkontakte/android/SendSinglePhotoActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 424
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v4, "file"

    const-string v5, "file"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 425
    const-string v4, "show_hint"

    invoke-virtual {v2, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 426
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 427
    .restart local v3    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "aid"

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget v6, v6, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget v4, v4, Lcom/vkontakte/android/api/PhotoAlbum;->oid:I

    if-gez v4, :cond_4

    const-string v4, "gid"

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget v6, v6, Lcom/vkontakte/android/api/PhotoAlbum;->oid:I

    neg-int v6, v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    :cond_4
    const-string v4, "req_params"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 430
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/fragments/PhotoListFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 10
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    const v9, 0x7f090128

    const/4 v8, 0x1

    const v6, -0xe7e7e8

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 151
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    .line 153
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->actionBarBg:Landroid/graphics/drawable/Drawable;

    .line 155
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "nohead"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 156
    iget-boolean v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->useFadingActionBar:Z

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->actionBarBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 159
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/ui/ActionBarHacks;->getActionBarOverlay(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    .line 160
    .local v0, "overlay":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 161
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "overlay":Landroid/view/View;
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->actionBarBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 167
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "album"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/PhotoAlbum;

    iput-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    .line 168
    const v1, 0x7f03006a

    invoke-static {p1, v1, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->headerView:Landroid/view/View;

    .line 169
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->headerView:Landroid/view/View;

    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x43660000    # 230.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->contentView:Landroid/widget/FrameLayout;

    .line 171
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->contentWrap:Landroid/widget/FrameLayout;

    .line 172
    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    .line 173
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 174
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 175
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 176
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 177
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 179
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    const/high16 v2, 0x2000000

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 180
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget v1, v1, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    const/16 v2, -0x2329

    if-eq v1, v2, :cond_9

    .line 181
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->headerView:Landroid/view/View;

    invoke-virtual {v1, v2, v7, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 191
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget v1, v1, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    const/16 v2, -0x2328

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget v1, v1, Lcom/vkontakte/android/api/PhotoAlbum;->numPhotos:I

    const/16 v2, 0xc8

    if-le v1, v2, :cond_3

    .line 192
    :cond_2
    new-instance v1, Lcom/vkontakte/android/ui/LoadMoreFooterView;

    invoke-direct {v1, p1}, Lcom/vkontakte/android/ui/LoadMoreFooterView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    .line 193
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    invoke-virtual {v1, v2, v7, v5}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 194
    iput-boolean v8, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->moreAvailable:Z

    .line 195
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02024d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 197
    :cond_3
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "album"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    .line 198
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    new-instance v2, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotosAdapter;

    invoke-direct {v2, p0, v7}, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotosAdapter;-><init>(Lcom/vkontakte/android/fragments/PhotoListFragment;Lcom/vkontakte/android/fragments/PhotoListFragment$PhotosAdapter;)V

    iput-object v2, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->adapter:Lcom/vkontakte/android/fragments/PhotoListFragment$PhotosAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 199
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->contentWrap:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 200
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->emptyView:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 201
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->contentWrap:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 202
    :cond_4
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->contentWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 204
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->progress:Landroid/widget/ProgressBar;

    .line 205
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02024d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 206
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

    .line 207
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->contentWrap:Landroid/widget/FrameLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 209
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "nohead"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 210
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget-object v1, v1, Lcom/vkontakte/android/api/PhotoAlbum;->title:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 212
    :cond_5
    new-instance v1, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v2, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoImagesAdapter;

    invoke-direct {v2, p0, v7}, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoImagesAdapter;-><init>(Lcom/vkontakte/android/fragments/PhotoListFragment;Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoImagesAdapter;)V

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    new-instance v4, Lcom/vkontakte/android/fragments/PhotoListFragment$2;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/fragments/PhotoListFragment$2;-><init>(Lcom/vkontakte/android/fragments/PhotoListFragment;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 244
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->headerView:Landroid/view/View;

    const v2, 0x7f090126

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/vkontakte/android/ui/Fonts;->getRobotoLight()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 245
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->headerView:Landroid/view/View;

    const v2, 0x7f090127

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/vkontakte/android/ui/Fonts;->getRobotoLight()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 246
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->headerView:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/vkontakte/android/ui/Fonts;->getRobotoLight()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 247
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->headerView:Landroid/view/View;

    const v2, 0x7f090126

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget-object v2, v2, Lcom/vkontakte/android/api/PhotoAlbum;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->updateCount()V

    .line 250
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->headerView:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget-object v2, v2, Lcom/vkontakte/android/api/PhotoAlbum;->descr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget-object v1, v1, Lcom/vkontakte/android/api/PhotoAlbum;->descr:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget-object v1, v1, Lcom/vkontakte/android/api/PhotoAlbum;->descr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_7

    .line 252
    :cond_6
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->headerView:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 254
    :cond_7
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f03003f

    invoke-static {v1, v2, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ui/ErrorView;

    iput-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->error:Lcom/vkontakte/android/ui/ErrorView;

    .line 255
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->error:Lcom/vkontakte/android/ui/ErrorView;

    new-instance v2, Lcom/vkontakte/android/fragments/PhotoListFragment$3;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/PhotoListFragment$3;-><init>(Lcom/vkontakte/android/fragments/PhotoListFragment;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/ErrorView;->setOnRetryListener(Landroid/view/View$OnClickListener;)V

    .line 263
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->error:Lcom/vkontakte/android/ui/ErrorView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 264
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->error:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 266
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->updateCover()V

    .line 268
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->loadData()V

    .line 270
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget v1, v1, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    if-lez v1, :cond_8

    .line 271
    invoke-virtual {p0, v8}, Lcom/vkontakte/android/fragments/PhotoListFragment;->setHasOptionsMenu(Z)V

    .line 273
    :cond_8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 284
    return-void

    .line 184
    :cond_9
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->emptyView:Landroid/widget/TextView;

    .line 185
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->emptyView:Landroid/widget/TextView;

    const v2, 0x7f0a0082

    invoke-virtual {v1, p1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 186
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->emptyView:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 187
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->emptyView:Landroid/widget/TextView;

    const v2, 0x7f0800db

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 188
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->emptyView:Landroid/widget/TextView;

    const v2, -0x7f000001

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 189
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 21
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 807
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 808
    .local v16, "pos":I
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "select"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 809
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 810
    .local v10, "intent":Landroid/content/Intent;
    const-string v3, "photo"

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->photos:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v10, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 811
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v1, v3, v10}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 812
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 858
    .end local v10    # "intent":Landroid/content/Intent;
    .end local p1    # "v":Landroid/view/View;
    :goto_0
    return-void

    .line 815
    .restart local p1    # "v":Landroid/view/View;
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 818
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

    if-le v9, v1, :cond_4

    .line 835
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 836
    .local v2, "args":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v3, 0x12c

    if-gt v1, v3, :cond_9

    .line 837
    const-string v1, "list"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 842
    :goto_3
    const-string v1, "orientation"

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 843
    const-string v1, "position"

    move/from16 v0, v16

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 844
    const-string v1, "bg_color"

    const v3, -0xe7e7e8

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 845
    const-string v1, "title"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget-object v3, v3, Lcom/vkontakte/android/api/PhotoAlbum;->title:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 846
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 847
    .local v8, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_1

    instance-of v1, v8, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 848
    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    .end local v8    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->sharedThumb:Landroid/graphics/Bitmap;

    .line 850
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget v3, v3, Lcom/vkontakte/android/api/PhotoAlbum;->numPhotos:I

    if-ge v1, v3, :cond_2

    .line 851
    const-string v1, "total"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget v3, v3, Lcom/vkontakte/android/api/PhotoAlbum;->numPhotos:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 852
    const-string v1, "aid"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget v3, v3, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 853
    const-string v1, "oid"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget v3, v3, Lcom/vkontakte/android/api/PhotoAlbum;->oid:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 855
    :cond_2
    const-string v1, "from_album"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget v3, v3, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 856
    const-string v1, "from_album_oid"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->album:Lcom/vkontakte/android/api/PhotoAlbum;

    iget v3, v3, Lcom/vkontakte/android/api/PhotoAlbum;->oid:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 857
    const-string v1, "PhotoViewerFragment"

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-static/range {v1 .. v6}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;ZII)V

    goto/16 :goto_0

    .line 815
    .end local v2    # "args":Landroid/os/Bundle;
    .end local v9    # "i":I
    .restart local p1    # "v":Landroid/view/View;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/vkontakte/android/Photo;

    .line 816
    .local v15, "p":Lcom/vkontakte/android/Photo;
    const/4 v3, 0x0

    iput-object v3, v15, Lcom/vkontakte/android/Photo;->viewBounds:Landroid/graphics/Rect;

    goto/16 :goto_1

    .line 819
    .end local v15    # "p":Lcom/vkontakte/android/Photo;
    .restart local v9    # "i":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    if-lt v9, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->layout:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v1, v3

    if-lt v9, v1, :cond_6

    .line 818
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 820
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->layout:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    sub-int v3, v9, v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 821
    .local v13, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v9, v3

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 822
    .local v11, "item":Landroid/view/ViewGroup;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v1, v3, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/ActionBar;->getHeight()I

    move-result v7

    .line 823
    .local v7, "actionBarHeight":I
    :goto_4
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_5
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_5

    .line 824
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;

    .line 825
    .local v14, "lt":Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;
    const/4 v1, 0x2

    new-array v0, v1, [I

    move-object/from16 v18, v0

    .line 826
    .local v18, "vpos":[I
    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 827
    const/4 v1, 0x0

    aget v3, v18, v1

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    aput v3, v18, v1

    .line 828
    const/4 v1, 0x1

    aget v3, v18, v1

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    aput v3, v18, v1

    .line 829
    iget-object v1, v14, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;->photo:Lcom/vkontakte/android/Photo;

    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    aget v4, v18, v4

    const/4 v5, 0x1

    aget v5, v18, v5

    const/4 v6, 0x0

    aget v6, v18, v6

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWidth()I

    move-result v19

    add-int v6, v6, v19

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getPaddingRight()I

    move-result v19

    sub-int v6, v6, v19

    const/16 v19, 0x1

    aget v19, v18, v19

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getHeight()I

    move-result v20

    add-int v19, v19, v20

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getPaddingBottom()I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v0, v19

    invoke-direct {v3, v4, v5, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, v1, Lcom/vkontakte/android/Photo;->viewBounds:Landroid/graphics/Rect;

    .line 830
    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    invoke-static {v1, v3}, Lcom/vkontakte/android/ViewUtils;->getViewOffset(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    .line 831
    .local v17, "top":I
    sub-int v17, v17, v7

    .line 832
    iget-object v3, v14, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;->photo:Lcom/vkontakte/android/Photo;

    if-gez v17, :cond_8

    move/from16 v0, v17

    neg-int v1, v0

    :goto_6
    iput v1, v3, Lcom/vkontakte/android/Photo;->viewClipTop:I

    .line 823
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_5

    .line 822
    .end local v7    # "actionBarHeight":I
    .end local v12    # "j":I
    .end local v14    # "lt":Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;
    .end local v17    # "top":I
    .end local v18    # "vpos":[I
    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 832
    .restart local v7    # "actionBarHeight":I
    .restart local v12    # "j":I
    .restart local v14    # "lt":Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;
    .restart local v17    # "top":I
    .restart local v18    # "vpos":[I
    :cond_8
    const/4 v1, 0x0

    goto :goto_6

    .line 839
    .end local v7    # "actionBarHeight":I
    .end local v11    # "item":Landroid/view/ViewGroup;
    .end local v12    # "j":I
    .end local v13    # "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;>;"
    .end local v14    # "lt":Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;
    .end local v17    # "top":I
    .end local v18    # "vpos":[I
    .restart local v2    # "args":Landroid/os/Bundle;
    :cond_9
    const-string v1, "shared_list"

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 840
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PhotoListFragment;->photos:Ljava/util/ArrayList;

    sput-object v1, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->sharedList:Ljava/util/ArrayList;

    goto/16 :goto_3
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "cfg"    # Landroid/content/res/Configuration;

    .prologue
    .line 401
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->list:Landroid/widget/ListView;

    new-instance v1, Lcom/vkontakte/android/fragments/PhotoListFragment$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PhotoListFragment$5;-><init>(Lcom/vkontakte/android/fragments/PhotoListFragment;)V

    .line 405
    const-wide/16 v2, 0xc8

    .line 401
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 406
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "s"    # Landroid/os/Bundle;

    .prologue
    .line 350
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreate(Landroid/os/Bundle;)V

    .line 351
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 352
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.vkontakte.android.PHOTO_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 353
    const-string v1, "com.vkontakte.android.PHOTO_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    const-string v1, "com.vkontakte.android.UPDATE_PHOTO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 355
    const-string v1, "com.vkontakte.android.UPDATE_ALBUM_COVER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 356
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->receiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.vkontakte.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 357
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    const v3, 0x7f09021a

    .line 386
    const v0, 0x7f0e0008

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 387
    invoke-interface {p1, v3}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

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
    invoke-interface {v1, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 388
    invoke-interface {p1, v3}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0800dc

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setTitle(I)Lcom/actionbarsherlock/view/MenuItem;

    .line 389
    return-void

    .line 387
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
    .line 691
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->contentView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 370
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDestroy()V

    .line 371
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 372
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 373
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 3

    .prologue
    .line 360
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "nohead"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/ui/ActionBarHacks;->getActionBarOverlay(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    .line 362
    .local v0, "overlay":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 363
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "overlay":Landroid/view/View;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 366
    :cond_0
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDetach()V

    .line 367
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 392
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f09021a

    if-ne v1, v2, :cond_0

    .line 393
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/ImagePickerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 394
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "allow_album"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 395
    const/16 v1, 0xf32

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/fragments/PhotoListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 397
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 376
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onPause()V

    .line 377
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->deactivate()V

    .line 378
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 381
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 382
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->activate()V

    .line 383
    return-void
.end method
