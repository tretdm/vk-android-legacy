.class public Lcom/vkontakte/android/fragments/AudioListFragment;
.super Lcom/vkontakte/android/fragments/BaseListFragment;
.source "AudioListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;

.field private animatingTransitionOut:Z

.field private audios:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/AudioFile;",
            ">;"
        }
    .end annotation
.end field

.field private currentPlaylist:I

.field private currentRequest:Lcom/vkontakte/android/APIRequest;

.field private displayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/AudioFile;",
            ">;"
        }
    .end annotation
.end field

.field private errorRequest:Lcom/vkontakte/android/APIRequest;

.field private localSearchResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/AudioFile;",
            ">;"
        }
    .end annotation
.end field

.field private navAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nowPlaying:Lcom/vkontakte/android/AudioFile;

.field private playerBar:Landroid/view/View;

.field private playlists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/AudioPlaylist;",
            ">;"
        }
    .end annotation
.end field

.field private receiver:Landroid/content/BroadcastReceiver;

.field private searchLoader:Ljava/lang/Runnable;

.field private searchResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/AudioFile;",
            ">;"
        }
    .end annotation
.end field

.field private searchView:Lcom/actionbarsherlock/widget/SearchView;

.field private searching:Z

.field private select:Z

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 170
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/BaseListFragment;-><init>()V

    .line 65
    iput v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->currentPlaylist:I

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->audios:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->displayList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->searchResults:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->localSearchResults:Ljava/util/ArrayList;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->nowPlaying:Lcom/vkontakte/android/AudioFile;

    .line 69
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->animatingTransitionOut:Z

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->playlists:Ljava/util/ArrayList;

    .line 75
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->searching:Z

    .line 78
    new-instance v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/AudioListFragment$1;-><init>(Lcom/vkontakte/android/fragments/AudioListFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 168
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->select:Z

    .line 172
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/AudioListFragment;)Lcom/vkontakte/android/AudioFile;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->nowPlaying:Lcom/vkontakte/android/AudioFile;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/AudioListFragment;)Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->adapter:Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/fragments/AudioListFragment;I)V
    .locals 0

    .prologue
    .line 652
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/AudioListFragment;->setCurrentPlaylist(I)V

    return-void
.end method

.method static synthetic access$11(Lcom/vkontakte/android/fragments/AudioListFragment;)Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->searching:Z

    return v0
.end method

.method static synthetic access$12(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->displayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$13(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->localSearchResults:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$14(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->searchResults:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$15(Lcom/vkontakte/android/fragments/AudioListFragment;)Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->animatingTransitionOut:Z

    return v0
.end method

.method static synthetic access$16(Lcom/vkontakte/android/fragments/AudioListFragment;)Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->select:Z

    return v0
.end method

.method static synthetic access$17(Lcom/vkontakte/android/fragments/AudioListFragment;)V
    .locals 0

    .prologue
    .line 699
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->loadRecommendations()V

    return-void
.end method

.method static synthetic access$18(Lcom/vkontakte/android/fragments/AudioListFragment;)V
    .locals 0

    .prologue
    .line 769
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->loadSaved()V

    return-void
.end method

.method static synthetic access$19(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->playlists:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/fragments/AudioListFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$20(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->searchLoader:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$21(Lcom/vkontakte/android/fragments/AudioListFragment;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->searchLoader:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$22(Lcom/vkontakte/android/fragments/AudioListFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 729
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/AudioListFragment;->loadSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$23(Lcom/vkontakte/android/fragments/AudioListFragment;Z)V
    .locals 0

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->searching:Z

    return-void
.end method

.method static synthetic access$24(Lcom/vkontakte/android/fragments/AudioListFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 759
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/AudioListFragment;->doLocalSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$25(Lcom/vkontakte/android/fragments/AudioListFragment;)Lcom/vkontakte/android/APIRequest;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->errorRequest:Lcom/vkontakte/android/APIRequest;

    return-object v0
.end method

.method static synthetic access$26(Lcom/vkontakte/android/fragments/AudioListFragment;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$27(Lcom/vkontakte/android/fragments/AudioListFragment;)Landroid/widget/ArrayAdapter;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$28(Lcom/vkontakte/android/fragments/AudioListFragment;Z)V
    .locals 0

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->animatingTransitionOut:Z

    return-void
.end method

.method static synthetic access$29(Lcom/vkontakte/android/fragments/AudioListFragment;)Lcom/vkontakte/android/APIRequest;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/fragments/AudioListFragment;Lcom/vkontakte/android/AudioFile;Z)V
    .locals 0

    .prologue
    .line 609
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/fragments/AudioListFragment;->animateBottomBar(Lcom/vkontakte/android/AudioFile;Z)V

    return-void
.end method

.method static synthetic access$30(Lcom/vkontakte/android/fragments/AudioListFragment;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->errorRequest:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/fragments/AudioListFragment;Lcom/vkontakte/android/AudioFile;)V
    .locals 0

    .prologue
    .line 593
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/AudioListFragment;->showBottomBar(Lcom/vkontakte/android/AudioFile;)V

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/fragments/AudioListFragment;Lcom/vkontakte/android/AudioFile;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->nowPlaying:Lcom/vkontakte/android/AudioFile;

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/fragments/AudioListFragment;IZ)V
    .locals 0

    .prologue
    .line 516
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/fragments/AudioListFragment;->animateStateTransition(IZ)V

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/fragments/AudioListFragment;)I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->uid:I

    return v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->audios:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/fragments/AudioListFragment;)I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->currentPlaylist:I

    return v0
.end method

.method private animateBottomBar(Lcom/vkontakte/android/AudioFile;Z)V
    .locals 13
    .param p1, "f"    # Lcom/vkontakte/android/AudioFile;
    .param p2, "forward"    # Z

    .prologue
    .line 610
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ANIMATE "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    const v3, 0x7f080058

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ViewFlipper;

    .line 612
    .local v12, "vs":Landroid/widget/ViewFlipper;
    invoke-virtual {v12}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v12, v2}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 613
    .local v11, "v":Landroid/view/View;
    const v2, 0x7f08005b

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p1, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 614
    const v2, 0x7f08005a

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p1, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 615
    const v2, 0x7f08005b

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 616
    const v2, 0x7f08005a

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 617
    const v2, 0x7f080059

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 618
    .local v10, "iv":Landroid/widget/ImageView;
    iget v2, p1, Lcom/vkontakte/android/AudioFile;->oid:I

    iget v3, p1, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-direct {p0, v2, v3, v10}, Lcom/vkontakte/android/fragments/AudioListFragment;->getAndShowCover(IILandroid/widget/ImageView;)V

    .line 619
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz p2, :cond_1

    const/4 v6, 0x1

    :goto_1
    int-to-float v6, v6

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 620
    .local v0, "in":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 621
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 622
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-eqz p2, :cond_2

    const/4 v9, -0x1

    :goto_2
    int-to-float v9, v9

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 623
    .local v1, "out":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 624
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 625
    invoke-virtual {v12, v0}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 626
    invoke-virtual {v12, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 627
    invoke-virtual {v12}, Landroid/widget/ViewFlipper;->showNext()V

    .line 628
    return-void

    .line 612
    .end local v0    # "in":Landroid/view/animation/Animation;
    .end local v1    # "out":Landroid/view/animation/Animation;
    .end local v10    # "iv":Landroid/widget/ImageView;
    .end local v11    # "v":Landroid/view/View;
    :cond_0
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 619
    .restart local v10    # "iv":Landroid/widget/ImageView;
    .restart local v11    # "v":Landroid/view/View;
    :cond_1
    const/4 v6, -0x1

    goto :goto_1

    .line 622
    .restart local v0    # "in":Landroid/view/animation/Animation;
    :cond_2
    const/4 v9, 0x1

    goto :goto_2
.end method

.method private animateStateTransition(IZ)V
    .locals 10
    .param p1, "item"    # I
    .param p2, "in"    # Z

    .prologue
    .line 517
    const-string v5, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Animate "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-ge v5, v6, :cond_1

    .line 519
    iget-object v5, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->adapter:Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;

    invoke-virtual {v5}, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->notifyDataSetChanged()V

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    iget-object v5, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    add-int/2addr v5, p1

    iget-object v6, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v6

    if-lt v5, v6, :cond_0

    iget-object v5, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    add-int/2addr v5, p1

    iget-object v6, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v6

    if-gt v5, v6, :cond_0

    .line 523
    iget-object v5, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    add-int/2addr v5, p1

    iget-object v6, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v1, v5, v6

    .line 524
    .local v1, "childIdx":I
    iget-object v5, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 525
    .local v4, "v":Landroid/view/View;
    const/high16 v5, 0x420c0000    # 35.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    .line 526
    .local v2, "iconSize":I
    if-eqz p2, :cond_3

    .line 527
    const v5, 0x7f080063

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 528
    const v5, 0x7f080062

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 529
    const v5, 0x7f080063

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f020110

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 530
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_0

    .line 531
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 532
    .local v0, "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const v5, 0x7f080063

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

    .line 533
    const v5, 0x7f080064

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

    .line 534
    const v5, 0x7f080061

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

    .line 535
    iget-object v5, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v5

    if-lez v5, :cond_2

    .line 536
    const v5, 0x7f080063

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

    .line 537
    :cond_2
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 538
    .local v3, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 539
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 542
    .end local v0    # "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v3    # "set":Landroid/animation/AnimatorSet;
    :cond_3
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->animatingTransitionOut:Z

    .line 543
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_0

    .line 544
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 545
    .restart local v0    # "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const v5, 0x7f080063

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

    .line 546
    const v5, 0x7f080064

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

    .line 547
    const v5, 0x7f080061

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

    .line 548
    iget-object v5, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v5

    if-lez v5, :cond_4

    .line 549
    const v5, 0x7f080063

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

    .line 550
    :cond_4
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 551
    .restart local v3    # "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 552
    new-instance v5, Lcom/vkontakte/android/fragments/AudioListFragment$14;

    invoke-direct {v5, p0, v4}, Lcom/vkontakte/android/fragments/AudioListFragment$14;-><init>(Lcom/vkontakte/android/fragments/AudioListFragment;Landroid/view/View;)V

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 580
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 536
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private doLocalSearch(Ljava/lang/String;)V
    .locals 4
    .param p1, "q"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 760
    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->localSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 761
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 762
    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->displayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 766
    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->adapter:Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->notifyDataSetChanged()V

    .line 767
    return-void

    .line 762
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/AudioFile;

    .line 763
    .local v0, "f":Lcom/vkontakte/android/AudioFile;
    iget-object v2, v0, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gt v2, v3, :cond_2

    iget-object v2, v0, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-le v2, v3, :cond_0

    .line 764
    :cond_2
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->localSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getAndShowCover(IILandroid/widget/ImageView;)V
    .locals 3
    .param p1, "oid"    # I
    .param p2, "aid"    # I
    .param p3, "iv"    # Landroid/widget/ImageView;

    .prologue
    .line 631
    const v0, 0x7f020081

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 632
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GET COVER "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    const/4 v0, 0x1

    new-instance v1, Lcom/vkontakte/android/fragments/AudioListFragment$15;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/vkontakte/android/fragments/AudioListFragment$15;-><init>(Lcom/vkontakte/android/fragments/AudioListFragment;IILandroid/widget/ImageView;)V

    invoke-static {p2, p1, v0, v1}, Lcom/vkontakte/android/cache/AlbumArtRetriever;->getCoverImage(IIILcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;)V

    .line 650
    return-void
.end method

.method private loadData()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 668
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->contentWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 670
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 671
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 672
    new-instance v0, Lcom/vkontakte/android/api/AudioGet;

    iget v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->uid:I

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/AudioGet;-><init>(I)V

    .line 673
    new-instance v1, Lcom/vkontakte/android/fragments/AudioListFragment$16;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/AudioListFragment$16;-><init>(Lcom/vkontakte/android/fragments/AudioListFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/AudioGet;->setCallback(Lcom/vkontakte/android/api/AudioGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 696
    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 672
    iput-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    .line 697
    return-void
.end method

.method private loadRecommendations()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 700
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->contentWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 702
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 703
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 704
    new-instance v0, Lcom/vkontakte/android/api/AudioGetRecommendations;

    iget v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->uid:I

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/AudioGetRecommendations;-><init>(I)V

    .line 705
    new-instance v1, Lcom/vkontakte/android/fragments/AudioListFragment$17;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/AudioListFragment$17;-><init>(Lcom/vkontakte/android/fragments/AudioListFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/AudioGetRecommendations;->setCallback(Lcom/vkontakte/android/api/AudioGetRecommendations$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 726
    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 704
    iput-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    .line 727
    return-void
.end method

.method private loadSaved()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 772
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->contentWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 774
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 775
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 776
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/fragments/AudioListFragment$19;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/AudioListFragment$19;-><init>(Lcom/vkontakte/android/fragments/AudioListFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 787
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 788
    return-void
.end method

.method private loadSearch(Ljava/lang/String;)V
    .locals 2
    .param p1, "q"    # Ljava/lang/String;

    .prologue
    .line 730
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 732
    new-instance v0, Lcom/vkontakte/android/api/AudioSearch;

    invoke-direct {v0, p1}, Lcom/vkontakte/android/api/AudioSearch;-><init>(Ljava/lang/String;)V

    .line 733
    new-instance v1, Lcom/vkontakte/android/fragments/AudioListFragment$18;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/AudioListFragment$18;-><init>(Lcom/vkontakte/android/fragments/AudioListFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/AudioSearch;->setCallback(Lcom/vkontakte/android/api/AudioSearch$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 756
    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 732
    iput-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    .line 757
    return-void
.end method

.method private setCurrentPlaylist(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x0

    .line 653
    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->audios:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 654
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->loadData()V

    .line 665
    :goto_0
    return-void

    .line 657
    :cond_0
    iput p1, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->currentPlaylist:I

    .line 658
    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->displayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 659
    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->audios:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 663
    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->adapter:Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->notifyDataSetChanged()V

    .line 664
    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v3, v3}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_0

    .line 659
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/AudioFile;

    .line 660
    .local v0, "f":Lcom/vkontakte/android/AudioFile;
    if-eqz p1, :cond_3

    iget v2, v0, Lcom/vkontakte/android/AudioFile;->playlistID:I

    if-ne v2, p1, :cond_1

    .line 661
    :cond_3
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->displayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private showBottomBar(Lcom/vkontakte/android/AudioFile;)V
    .locals 11
    .param p1, "f"    # Lcom/vkontakte/android/AudioFile;

    .prologue
    const v7, 0x7f08005b

    const v6, 0x7f08005a

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 594
    iget-object v3, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    const v4, 0x7f080058

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ViewFlipper;

    .line 595
    .local v10, "vs":Landroid/widget/ViewFlipper;
    invoke-virtual {v10}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v3

    invoke-virtual {v10, v3}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 596
    .local v9, "v":Landroid/view/View;
    invoke-virtual {v9, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p1, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    invoke-virtual {v9, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p1, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    invoke-virtual {v9, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setSelected(Z)V

    .line 599
    invoke-virtual {v9, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setSelected(Z)V

    .line 600
    iget v4, p1, Lcom/vkontakte/android/AudioFile;->oid:I

    iget v6, p1, Lcom/vkontakte/android/AudioFile;->aid:I

    const v3, 0x7f080059

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-direct {p0, v4, v6, v3}, Lcom/vkontakte/android/fragments/AudioListFragment;->getAndShowCover(IILandroid/widget/ImageView;)V

    .line 601
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 602
    .local v0, "in":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 603
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 604
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 605
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 606
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->list:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v4

    const/high16 v5, 0x42680000    # 58.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 607
    return-void
.end method

.method private updateBottomBarButtons()V
    .locals 6

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x0

    .line 587
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    div-float v0, v3, v5

    .line 588
    .local v0, "dw":F
    const/high16 v3, 0x43b40000    # 360.0f

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_0

    const/4 v1, 0x1

    .line 589
    .local v1, "showBtns":Z
    :goto_0
    iget-object v3, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    const v5, 0x7f08005c

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v1, :cond_1

    move v3, v2

    :goto_1
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 590
    iget-object v3, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    const v5, 0x7f08005e

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v1, :cond_2

    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 591
    return-void

    .end local v1    # "showBtns":Z
    :cond_0
    move v1, v2

    .line 588
    goto :goto_0

    .restart local v1    # "showBtns":Z
    :cond_1
    move v3, v4

    .line 589
    goto :goto_1

    :cond_2
    move v2, v4

    .line 590
    goto :goto_2
.end method

.method private updateNavItems()V
    .locals 7

    .prologue
    const v6, 0x7f060186

    .line 448
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 449
    iget v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->uid:I

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    if-ne v0, v1, :cond_1

    .line 450
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    const v1, 0x7f06006c

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/fragments/AudioListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 451
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/fragments/AudioListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 457
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    const v1, 0x7f0600e7

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/fragments/AudioListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 458
    new-instance v0, Lcom/vkontakte/android/api/AudioGetAlbums;

    iget v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->uid:I

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/AudioGetAlbums;-><init>(I)V

    .line 459
    new-instance v1, Lcom/vkontakte/android/fragments/AudioListFragment$13;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/AudioListFragment$13;-><init>(Lcom/vkontakte/android/fragments/AudioListFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/AudioGetAlbums;->setCallback(Lcom/vkontakte/android/api/AudioGetAlbums$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 475
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 476
    return-void

    .line 453
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    const v1, 0x7f060080

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "username"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/fragments/AudioListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 454
    iget v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->uid:I

    if-lez v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/fragments/AudioListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected getEmptyText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 435
    const v0, 0x7f06006f

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/fragments/AudioListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initListView()Landroid/widget/ListView;
    .locals 3

    .prologue
    .line 409
    new-instance v0, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 428
    .local v0, "l":Landroid/widget/ListView;
    const v1, 0x7f0200da

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(I)V

    .line 429
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0x201d1b

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 430
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 431
    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 14
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 175
    invoke-super {p0, p1}, Lcom/vkontakte/android/fragments/BaseListFragment;->onAttach(Landroid/app/Activity;)V

    .line 176
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "select"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->select:Z

    .line 177
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "uid"

    sget v10, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->uid:I

    .line 178
    iget-object v8, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->list:Landroid/widget/ListView;

    new-instance v9, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;-><init>(Lcom/vkontakte/android/fragments/AudioListFragment;Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;)V

    iput-object v9, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->adapter:Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 179
    iget-object v8, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->list:Landroid/widget/ListView;

    new-instance v9, Lcom/vkontakte/android/fragments/AudioListFragment$2;

    invoke-direct {v9, p0}, Lcom/vkontakte/android/fragments/AudioListFragment$2;-><init>(Lcom/vkontakte/android/fragments/AudioListFragment;)V

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 224
    iget-object v8, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b000f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b000f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 225
    iget-object v8, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->list:Landroid/widget/ListView;

    const/high16 v9, 0x2000000

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 226
    iget-object v8, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->list:Landroid/widget/ListView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 228
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 229
    const-string v8, ""

    invoke-virtual {p1, v8}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 231
    const v8, 0x7f030020

    const/4 v9, 0x0

    invoke-static {p1, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    .line 232
    iget-object v8, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 233
    iget-object v8, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v9, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v11, -0x1

    const/high16 v12, 0x42680000    # 58.0f

    invoke-static {v12}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v12

    const/16 v13, 0x50

    invoke-direct {v10, v11, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v8, v9, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    iget-object v8, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    const v9, 0x7f08005d

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/vkontakte/android/fragments/AudioListFragment$3;

    invoke-direct {v9, p0}, Lcom/vkontakte/android/fragments/AudioListFragment$3;-><init>(Lcom/vkontakte/android/fragments/AudioListFragment;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v8, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    const v9, 0x7f08005c

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/vkontakte/android/fragments/AudioListFragment$4;

    invoke-direct {v9, p0}, Lcom/vkontakte/android/fragments/AudioListFragment$4;-><init>(Lcom/vkontakte/android/fragments/AudioListFragment;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    iget-object v8, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    const v9, 0x7f08005e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/vkontakte/android/fragments/AudioListFragment$5;

    invoke-direct {v9, p0}, Lcom/vkontakte/android/fragments/AudioListFragment$5;-><init>(Lcom/vkontakte/android/fragments/AudioListFragment;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iget-object v8, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    const v9, 0x7f080058

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/vkontakte/android/fragments/AudioListFragment$6;

    invoke-direct {v9, p0}, Lcom/vkontakte/android/fragments/AudioListFragment$6;-><init>(Lcom/vkontakte/android/fragments/AudioListFragment;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    sget-object v8, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v8, :cond_0

    .line 265
    sget-object v8, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v8}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v8

    iput-object v8, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->nowPlaying:Lcom/vkontakte/android/AudioFile;

    .line 266
    iget-object v8, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->nowPlaying:Lcom/vkontakte/android/AudioFile;

    if-eqz v8, :cond_0

    .line 267
    iget-object v8, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 268
    iget-object v8, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    const v9, 0x7f080058

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ViewFlipper;

    .line 269
    .local v7, "vs":Landroid/widget/ViewFlipper;
    invoke-virtual {v7}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 270
    .local v6, "v":Landroid/view/View;
    const v8, 0x7f08005b

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->nowPlaying:Lcom/vkontakte/android/AudioFile;

    iget-object v9, v9, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    const v8, 0x7f08005a

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->nowPlaying:Lcom/vkontakte/android/AudioFile;

    iget-object v9, v9, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    const v8, 0x7f08005b

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/view/View;->setSelected(Z)V

    .line 273
    const v8, 0x7f08005a

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/view/View;->setSelected(Z)V

    .line 274
    iget-object v8, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->nowPlaying:Lcom/vkontakte/android/AudioFile;

    iget v9, v8, Lcom/vkontakte/android/AudioFile;->oid:I

    iget-object v8, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->nowPlaying:Lcom/vkontakte/android/AudioFile;

    iget v10, v8, Lcom/vkontakte/android/AudioFile;->aid:I

    const v8, 0x7f080059

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-direct {p0, v9, v10, v8}, Lcom/vkontakte/android/fragments/AudioListFragment;->getAndShowCover(IILandroid/widget/ImageView;)V

    .line 275
    iget-object v8, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    const v9, 0x7f08005d

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    sget-object v9, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v9}, Lcom/vkontakte/android/AudioPlayerService;->isPlaying()Z

    move-result v9

    if-eqz v9, :cond_1

    const v9, 0x7f02010c

    :goto_0
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 276
    iget-object v8, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->list:Landroid/widget/ListView;

    iget-object v9, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v9

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v11}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v11

    const/high16 v12, 0x42680000    # 58.0f

    invoke-static {v12}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 279
    .end local v6    # "v":Landroid/view/View;
    .end local v7    # "vs":Landroid/widget/ViewFlipper;
    :cond_0
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->updateBottomBarButtons()V

    .line 281
    invoke-static {p1}, Lcom/vkontakte/android/cache/AudioCache;->fillIDs(Landroid/content/Context;)V

    .line 286
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v2

    .line 287
    .local v2, "sa":Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 288
    new-instance v8, Lcom/vkontakte/android/fragments/AudioListFragment$7;

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v9

    invoke-virtual {v9}, Lcom/actionbarsherlock/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f030044

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v8, p0, v9, v10, v11}, Lcom/vkontakte/android/fragments/AudioListFragment$7;-><init>(Lcom/vkontakte/android/fragments/AudioListFragment;Landroid/content/Context;ILjava/util/List;)V

    iput-object v8, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    .line 293
    iget-object v8, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    const v9, 0x7f030066

    invoke-virtual {v8, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 294
    new-instance v0, Lcom/vkontakte/android/fragments/AudioListFragment$8;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/AudioListFragment$8;-><init>(Lcom/vkontakte/android/fragments/AudioListFragment;)V

    .line 317
    .local v0, "navListener":Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;
    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v8

    iget-object v9, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v8, v9, v0}, Lcom/actionbarsherlock/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;)V

    .line 318
    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 319
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->updateNavItems()V

    .line 321
    new-instance v8, Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v9

    invoke-virtual {v9}, Lcom/actionbarsherlock/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/actionbarsherlock/widget/SearchView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    .line 322
    iget-object v8, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060046

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/actionbarsherlock/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 324
    :try_start_0
    const-class v8, Lcom/actionbarsherlock/widget/SearchView;

    const-string v9, "mSearchButton"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 325
    .local v4, "searchField":Ljava/lang/reflect/Field;
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 326
    iget-object v8, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 327
    .local v3, "searchBtn":Landroid/widget/ImageView;
    const v8, 0x7f0200ed

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 328
    const-class v8, Lcom/actionbarsherlock/widget/SearchView;

    const-string v9, "mSearchPlate"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 329
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 330
    iget-object v8, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 331
    .local v5, "searchPlate":Landroid/widget/LinearLayout;
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, -0x7f000001

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setHintTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    .end local v3    # "searchBtn":Landroid/widget/ImageView;
    .end local v4    # "searchField":Ljava/lang/reflect/Field;
    .end local v5    # "searchPlate":Landroid/widget/LinearLayout;
    :goto_1
    iget-object v8, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    new-instance v9, Lcom/vkontakte/android/fragments/AudioListFragment$9;

    invoke-direct {v9, p0}, Lcom/vkontakte/android/fragments/AudioListFragment$9;-><init>(Lcom/vkontakte/android/fragments/AudioListFragment;)V

    invoke-virtual {v8, v9}, Lcom/actionbarsherlock/widget/SearchView;->setOnQueryTextListener(Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;)V

    .line 367
    iget-object v8, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    new-instance v9, Lcom/vkontakte/android/fragments/AudioListFragment$10;

    invoke-direct {v9, p0}, Lcom/vkontakte/android/fragments/AudioListFragment$10;-><init>(Lcom/vkontakte/android/fragments/AudioListFragment;)V

    invoke-virtual {v8, v9}, Lcom/actionbarsherlock/widget/SearchView;->setOnSearchClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    iget-object v8, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    new-instance v9, Lcom/vkontakte/android/fragments/AudioListFragment$11;

    invoke-direct {v9, p0}, Lcom/vkontakte/android/fragments/AudioListFragment$11;-><init>(Lcom/vkontakte/android/fragments/AudioListFragment;)V

    invoke-virtual {v8, v9}, Lcom/actionbarsherlock/widget/SearchView;->setOnCloseListener(Lcom/actionbarsherlock/widget/SearchView$OnCloseListener;)V

    .line 381
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/vkontakte/android/fragments/AudioListFragment;->setHasOptionsMenu(Z)V

    .line 383
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "search"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 384
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "search"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 385
    .local v1, "q":Ljava/lang/String;
    iget-object v8, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/actionbarsherlock/widget/SearchView;->setIconified(Z)V

    .line 386
    iget-object v8, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    const/4 v9, 0x1

    invoke-virtual {v8, v1, v9}, Lcom/actionbarsherlock/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 387
    iget-object v8, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v8}, Lcom/actionbarsherlock/widget/SearchView;->clearFocus()V

    .line 396
    .end local v1    # "q":Ljava/lang/String;
    :goto_2
    iget-object v8, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    new-instance v9, Lcom/vkontakte/android/fragments/AudioListFragment$12;

    invoke-direct {v9, p0}, Lcom/vkontakte/android/fragments/AudioListFragment$12;-><init>(Lcom/vkontakte/android/fragments/AudioListFragment;)V

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/ui/ErrorView;->setOnRetryListener(Landroid/view/View$OnClickListener;)V

    .line 406
    return-void

    .line 275
    .end local v0    # "navListener":Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;
    .end local v2    # "sa":Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    .restart local v6    # "v":Landroid/view/View;
    .restart local v7    # "vs":Landroid/widget/ViewFlipper;
    :cond_1
    const v9, 0x7f02010d

    goto/16 :goto_0

    .line 389
    .end local v6    # "v":Landroid/view/View;
    .end local v7    # "vs":Landroid/widget/ViewFlipper;
    .restart local v0    # "navListener":Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;
    .restart local v2    # "sa":Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    :cond_2
    invoke-static {}, Lcom/vkontakte/android/NetworkStateReceiver;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 390
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->loadData()V

    goto :goto_2

    .line 392
    :cond_3
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v9

    iget v8, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->uid:I

    if-lez v8, :cond_4

    const/4 v8, 0x2

    :goto_3
    invoke-virtual {v9, v8}, Lcom/actionbarsherlock/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_2

    :cond_4
    const/4 v8, 0x1

    goto :goto_3

    .line 332
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "cfg"    # Landroid/content/res/Configuration;

    .prologue
    .line 512
    invoke-super {p0, p1}, Lcom/vkontakte/android/fragments/BaseListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 513
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->updateBottomBarButtons()V

    .line 514
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 479
    invoke-super {p0, p1}, Lcom/vkontakte/android/fragments/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 480
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 481
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.vkontakte.android.UPDATE_AUDIO_LISTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 482
    const-string v1, "com.vkontakte.android.ALBUM_ART_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 483
    const-string v1, "com.vkontakte.android.AUDIO_FILE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 484
    const-string v1, "com.vkontakte.android.AUDIO_FILE_DELETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 485
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 486
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    .line 439
    const-string v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "invalidate menu, removing="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->isRemoving()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->isRemoving()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 445
    :goto_0
    return-void

    .line 441
    :cond_0
    const v1, 0x7f060046

    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->add(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    .line 442
    .local v0, "search":Lcom/actionbarsherlock/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 443
    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setActionView(Landroid/view/View;)Lcom/actionbarsherlock/view/MenuItem;

    .line 444
    invoke-super {p0, p1, p2}, Lcom/vkontakte/android/fragments/BaseListFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 489
    invoke-super {p0}, Lcom/vkontakte/android/fragments/BaseListFragment;->onDestroy()V

    .line 491
    :try_start_0
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 494
    :cond_0
    return-void

    .line 492
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 506
    invoke-super {p0}, Lcom/vkontakte/android/fragments/BaseListFragment;->onPause()V

    .line 508
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setVolumeControlStream(I)V

    .line 509
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 497
    invoke-super {p0}, Lcom/vkontakte/android/fragments/BaseListFragment;->onResume()V

    .line 498
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setVolumeControlStream(I)V

    .line 499
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 500
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 501
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->adapter:Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->notifyDataSetChanged()V

    .line 503
    :cond_0
    return-void
.end method
