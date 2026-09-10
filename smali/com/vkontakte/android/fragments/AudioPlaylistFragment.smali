.class public Lcom/vkontakte/android/fragments/AudioPlaylistFragment;
.super Landroid/app/DialogFragment;
.source "AudioPlaylistFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;

.field private animatingTransitionOut:Z

.field private files:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/AudioFile;",
            ">;"
        }
    .end annotation
.end field

.field private list:Landroid/widget/ListView;

.field private nowPlaying:Lcom/vkontakte/android/AudioFile;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private swipeDismiss:Lcom/vkontakte/android/ui/SwipeDismissListViewTouchListener;

.field private usePopUp:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->files:Ljava/util/ArrayList;

    .line 47
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->animatingTransitionOut:Z

    .line 50
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->usePopUp:Z

    .line 53
    new-instance v0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$1;-><init>(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 354
    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/AudioPlaylistFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;)Lcom/vkontakte/android/AudioFile;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/AudioPlaylistFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->nowPlaying:Lcom/vkontakte/android/AudioFile;

    return-object v0
.end method

.method static synthetic access$102(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;Lcom/vkontakte/android/AudioFile;)Lcom/vkontakte/android/AudioFile;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/AudioPlaylistFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/AudioFile;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->nowPlaying:Lcom/vkontakte/android/AudioFile;

    return-object p1
.end method

.method static synthetic access$200(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;)Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/AudioPlaylistFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->adapter:Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/AudioPlaylistFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->animateStateTransition(IZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/AudioPlaylistFragment;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->update()V

    return-void
.end method

.method static synthetic access$500(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/AudioPlaylistFragment;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->usePopUp:Z

    return v0
.end method

.method static synthetic access$700(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/AudioPlaylistFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->files:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/AudioPlaylistFragment;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->animatingTransitionOut:Z

    return v0
.end method

.method static synthetic access$802(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/AudioPlaylistFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->animatingTransitionOut:Z

    return p1
.end method

.method private animateStateTransition(IZ)V
    .locals 10
    .param p1, "item"    # I
    .param p2, "in"    # Z

    .prologue
    .line 287
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-ge v5, v6, :cond_1

    .line 288
    iget-object v5, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->adapter:Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;

    invoke-virtual {v5}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;->notifyDataSetChanged()V

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    iget-object v5, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    add-int/2addr v5, p1

    iget-object v6, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v6

    if-lt v5, v6, :cond_0

    iget-object v5, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    add-int/2addr v5, p1

    iget-object v6, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v6

    if-gt v5, v6, :cond_0

    .line 292
    iget-object v5, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    add-int/2addr v5, p1

    iget-object v6, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v1, v5, v6

    .line 293
    .local v1, "childIdx":I
    iget-object v5, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 294
    .local v4, "v":Landroid/view/View;
    const/high16 v5, 0x420c0000    # 35.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    .line 295
    .local v2, "iconSize":I
    if-eqz p2, :cond_3

    .line 296
    const v5, 0x7f080059

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 297
    const v5, 0x7f080059

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f0200b2

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 298
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_0

    .line 299
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 300
    .local v0, "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const v5, 0x7f080059

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "translationX"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    neg-int v9, v2

    int-to-float v9, v9

    aput v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    const v5, 0x7f08005a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "translationX"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    neg-int v9, v2

    int-to-float v9, v9

    aput v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    const v5, 0x7f080057

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "translationX"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    neg-int v9, v2

    int-to-float v9, v9

    aput v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object v5, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v5

    if-lez v5, :cond_2

    .line 304
    const v5, 0x7f080059

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "alpha"

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_2
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 306
    .local v3, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 307
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 310
    .end local v0    # "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v3    # "set":Landroid/animation/AnimatorSet;
    :cond_3
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->animatingTransitionOut:Z

    .line 311
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_0

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .restart local v0    # "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const v5, 0x7f080059

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "translationX"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    neg-int v9, v2

    int-to-float v9, v9

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    const v5, 0x7f08005a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "translationX"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    neg-int v9, v2

    int-to-float v9, v9

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    const v5, 0x7f080057

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "translationX"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    neg-int v9, v2

    int-to-float v9, v9

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    iget-object v5, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v5

    if-lez v5, :cond_4

    .line 317
    const v5, 0x7f080059

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "alpha"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    :cond_4
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 319
    .restart local v3    # "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 320
    new-instance v5, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$7;

    invoke-direct {v5, p0, v4}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$7;-><init>(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;Landroid/view/View;)V

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 348
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 304
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private update()V
    .locals 2

    .prologue
    .line 277
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->files:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 279
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->files:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioPlayerService;->getPlaylist(Ljava/util/List;)V

    .line 280
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->adapter:Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->adapter:Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;->notifyDataSetChanged()V

    .line 282
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 120
    if-eqz p1, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 122
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 95
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->update()V

    .line 97
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 98
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.vkontakte.android.UPDATE_AUDIO_LISTS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string v2, "com.vkontakte.android.AUDIO_FILE_ADDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const-string v2, "com.vkontakte.android.AUDIO_FILE_DELETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->receiver:Landroid/content/BroadcastReceiver;

    const-string v6, "com.vkontakte.android.permission.ACCESS_DATA"

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v0, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 102
    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v2, :cond_0

    .line 103
    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->nowPlaying:Lcom/vkontakte/android/AudioFile;

    .line 105
    :cond_0
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v2, 0xf

    .line 106
    .local v1, "scrSize":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v2, v5, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    :cond_1
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->usePopUp:Z

    .line 108
    invoke-virtual {p0, v3, v4}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->setStyle(II)V

    .line 109
    return-void

    :cond_2
    move v2, v4

    .line 106
    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0xe

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 126
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_1

    .line 127
    new-instance v0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$2;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$2;-><init>(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->list:Landroid/widget/ListView;

    .line 187
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->list:Landroid/widget/ListView;

    const v1, 0x7f020077

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(I)V

    .line 188
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->list:Landroid/widget/ListView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0x201d1b

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 189
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 190
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->list:Landroid/widget/ListView;

    new-instance v1, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;

    invoke-direct {v1, p0, v6}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;-><init>(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;Lcom/vkontakte/android/fragments/AudioPlaylistFragment$1;)V

    iput-object v1, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->adapter:Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 191
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->list:Landroid/widget/ListView;

    new-instance v1, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$4;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$4;-><init>(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 203
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->list:Landroid/widget/ListView;

    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->getPlaylistPosition()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 207
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_2

    .line 208
    new-instance v0, Lcom/vkontakte/android/ui/SwipeDismissListViewTouchListener;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->list:Landroid/widget/ListView;

    new-instance v2, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$5;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$5;-><init>(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/ui/SwipeDismissListViewTouchListener;-><init>(Landroid/widget/ListView;Lcom/vkontakte/android/ui/SwipeDismissListViewTouchListener$DismissCallbacks;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->swipeDismiss:Lcom/vkontakte/android/ui/SwipeDismissListViewTouchListener;

    .line 225
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->swipeDismiss:Lcom/vkontakte/android/ui/SwipeDismissListViewTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 230
    :goto_1
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 232
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->list:Landroid/widget/ListView;

    return-object v0

    .line 157
    :cond_1
    new-instance v0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$3;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$3;-><init>(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->list:Landroid/widget/ListView;

    goto :goto_0

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 112
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 114
    :try_start_0
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 271
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 272
    iput-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->list:Landroid/widget/ListView;

    .line 273
    iput-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->adapter:Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;

    .line 274
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x2

    .line 236
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 237
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 238
    .local v0, "dlg":Landroid/app/Dialog;
    sget-boolean v3, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v3, :cond_2

    .line 239
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setFlags(II)V

    .line 245
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 246
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x0

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 247
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 248
    .local v2, "r":Landroid/graphics/Rect;
    iget-boolean v3, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->usePopUp:Z

    if-nez v3, :cond_1

    .line 249
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 250
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getHeight()I

    move-result v3

    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 251
    const/16 v3, 0x35

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 252
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 253
    iget-boolean v3, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->usePopUp:Z

    if-eqz v3, :cond_3

    .line 254
    const/high16 v3, 0x43c80000    # 400.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 258
    :goto_1
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 259
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    new-instance v4, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$6;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$6;-><init>(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;Landroid/view/Window$Callback;)V

    invoke-virtual {v3, v4}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 268
    return-void

    .line 241
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "r":Landroid/graphics/Rect;
    :cond_2
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 242
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_0

    .line 243
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x3f333333    # 0.7f

    invoke-virtual {v3, v4}, Landroid/view/Window;->setDimAmount(F)V

    goto :goto_0

    .line 256
    .restart local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    .restart local v2    # "r":Landroid/graphics/Rect;
    :cond_3
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
