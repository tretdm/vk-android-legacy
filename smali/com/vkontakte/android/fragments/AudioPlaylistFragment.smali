.class public Lcom/vkontakte/android/fragments/AudioPlaylistFragment;
.super Lcom/actionbarsherlock/app/SherlockDialogFragment;
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

    .line 44
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockDialogFragment;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->files:Ljava/util/ArrayList;

    .line 48
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->animatingTransitionOut:Z

    .line 51
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->usePopUp:Z

    .line 54
    new-instance v0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$1;-><init>(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 44
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;)Lcom/vkontakte/android/AudioFile;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->nowPlaying:Lcom/vkontakte/android/AudioFile;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;)Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->adapter:Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;Lcom/vkontakte/android/AudioFile;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->nowPlaying:Lcom/vkontakte/android/AudioFile;

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;IZ)V
    .locals 0

    .prologue
    .line 285
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->animateStateTransition(IZ)V

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;)V
    .locals 0

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->update()V

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->files:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->animatingTransitionOut:Z

    return v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;)Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->usePopUp:Z

    return v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;Z)V
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->animatingTransitionOut:Z

    return-void
.end method

.method private animateStateTransition(IZ)V
    .locals 10
    .param p1, "item"    # I
    .param p2, "in"    # Z

    .prologue
    .line 288
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-ge v5, v6, :cond_1

    .line 289
    iget-object v5, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->adapter:Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;

    invoke-virtual {v5}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;->notifyDataSetChanged()V

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 292
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

    .line 293
    iget-object v5, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    add-int/2addr v5, p1

    iget-object v6, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v1, v5, v6

    .line 294
    .local v1, "childIdx":I
    iget-object v5, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 295
    .local v4, "v":Landroid/view/View;
    const/high16 v5, 0x420c0000    # 35.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    .line 296
    .local v2, "iconSize":I
    if-eqz p2, :cond_3

    .line 297
    const v5, 0x7f09006e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 298
    const v5, 0x7f09006e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f02011f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 299
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_0

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v0, "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const v5, 0x7f09006e

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
    const v5, 0x7f09006f

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
    const v5, 0x7f09006c

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

    .line 304
    iget-object v5, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v5

    if-lez v5, :cond_2

    .line 305
    const v5, 0x7f09006e

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

    .line 306
    :cond_2
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 307
    .local v3, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 308
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 311
    .end local v0    # "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v3    # "set":Landroid/animation/AnimatorSet;
    :cond_3
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->animatingTransitionOut:Z

    .line 312
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_0

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .restart local v0    # "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const v5, 0x7f09006e

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
    const v5, 0x7f09006f

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
    const v5, 0x7f09006c

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

    .line 317
    iget-object v5, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v5

    if-lez v5, :cond_4

    .line 318
    const v5, 0x7f09006e

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

    .line 319
    :cond_4
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 320
    .restart local v3    # "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 321
    new-instance v5, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$7;

    invoke-direct {v5, p0, v4}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$7;-><init>(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;Landroid/view/View;)V

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 349
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 305
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
    .line 278
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->files:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 280
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->files:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioPlayerService;->getPlaylist(Ljava/util/List;)V

    .line 281
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->adapter:Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->adapter:Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;->notifyDataSetChanged()V

    .line 283
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 121
    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 123
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 96
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->update()V

    .line 98
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 99
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.vkontakte.android.UPDATE_AUDIO_LISTS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const-string v2, "com.vkontakte.android.AUDIO_FILE_ADDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string v2, "com.vkontakte.android.AUDIO_FILE_DELETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->receiver:Landroid/content/BroadcastReceiver;

    const-string v6, "com.vkontakte.android.permission.ACCESS_DATA"

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v0, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 103
    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v2, :cond_0

    .line 104
    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->nowPlaying:Lcom/vkontakte/android/AudioFile;

    .line 106
    :cond_0
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v2, 0xf

    .line 107
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

    .line 109
    invoke-virtual {p0, v3, v4}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->setStyle(II)V

    .line 110
    return-void

    :cond_2
    move v2, v4

    .line 107
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

    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_1

    .line 128
    new-instance v0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$2;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$2;-><init>(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->list:Landroid/widget/ListView;

    .line 188
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->list:Landroid/widget/ListView;

    const v1, 0x7f0200e6

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(I)V

    .line 189
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->list:Landroid/widget/ListView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0x201d1b

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 190
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 191
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->list:Landroid/widget/ListView;

    new-instance v1, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;

    invoke-direct {v1, p0, v6}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;-><init>(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;)V

    iput-object v1, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->adapter:Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 192
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->list:Landroid/widget/ListView;

    new-instance v1, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$4;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$4;-><init>(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 204
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->list:Landroid/widget/ListView;

    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->getPlaylistPosition()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 208
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_2

    .line 209
    new-instance v0, Lcom/vkontakte/android/ui/SwipeDismissListViewTouchListener;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->list:Landroid/widget/ListView;

    new-instance v2, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$5;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$5;-><init>(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/ui/SwipeDismissListViewTouchListener;-><init>(Landroid/widget/ListView;Lcom/vkontakte/android/ui/SwipeDismissListViewTouchListener$DismissCallbacks;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->swipeDismiss:Lcom/vkontakte/android/ui/SwipeDismissListViewTouchListener;

    .line 226
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->swipeDismiss:Lcom/vkontakte/android/ui/SwipeDismissListViewTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 231
    :goto_1
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 233
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->list:Landroid/widget/ListView;

    return-object v0

    .line 158
    :cond_1
    new-instance v0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$3;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$3;-><init>(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->list:Landroid/widget/ListView;

    goto :goto_0

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 113
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->onDestroy()V

    .line 115
    :try_start_0
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 272
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->onDestroyView()V

    .line 273
    iput-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->list:Landroid/widget/ListView;

    .line 274
    iput-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->adapter:Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;

    .line 275
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x2

    .line 237
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->onResume()V

    .line 238
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 239
    .local v0, "dlg":Landroid/app/Dialog;
    sget-boolean v3, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v3, :cond_2

    .line 240
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setFlags(II)V

    .line 246
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 247
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x0

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 248
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 249
    .local v2, "r":Landroid/graphics/Rect;
    iget-boolean v3, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->usePopUp:Z

    if-nez v3, :cond_1

    .line 250
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 251
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/actionbarsherlock/app/ActionBar;->getHeight()I

    move-result v3

    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 252
    const/16 v3, 0x35

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 253
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 254
    iget-boolean v3, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->usePopUp:Z

    if-eqz v3, :cond_3

    .line 255
    const/high16 v3, 0x43c80000    # 400.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 259
    :goto_1
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 260
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    new-instance v4, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$6;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$6;-><init>(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;Landroid/view/Window$Callback;)V

    invoke-virtual {v3, v4}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 269
    return-void

    .line 242
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "r":Landroid/graphics/Rect;
    :cond_2
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 243
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_0

    .line 244
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x3f333333    # 0.7f

    invoke-virtual {v3, v4}, Landroid/view/Window;->setDimAmount(F)V

    goto :goto_0

    .line 257
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
