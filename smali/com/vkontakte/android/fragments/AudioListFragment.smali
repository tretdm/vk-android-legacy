.class public Lcom/vkontakte/android/fragments/AudioListFragment;
.super Lcom/vkontakte/android/fragments/BaseListFragment;
.source "AudioListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkontakte/android/fragments/BaseListFragment",
        "<",
        "Lcom/vkontakte/android/AudioFile;",
        ">;"
    }
.end annotation


# instance fields
.field private adapter:Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;

.field private animatingTransitionOut:Z

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

.field private handler:Landroid/os/Handler;

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

.field private searchView:Landroid/widget/SearchView;

.field private searching:Z

.field private select:Z

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 186
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/BaseListFragment;-><init>()V

    .line 69
    iput v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->currentPlaylist:I

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->displayList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->searchResults:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->localSearchResults:Ljava/util/ArrayList;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->nowPlaying:Lcom/vkontakte/android/AudioFile;

    .line 73
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->animatingTransitionOut:Z

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->playlists:Ljava/util/ArrayList;

    .line 79
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->searching:Z

    .line 82
    new-instance v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/AudioListFragment$1;-><init>(Lcom/vkontakte/android/fragments/AudioListFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 183
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->select:Z

    .line 187
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->handler:Landroid/os/Handler;

    .line 188
    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/fragments/AudioListFragment;)Lcom/vkontakte/android/AudioFile;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/AudioListFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->nowPlaying:Lcom/vkontakte/android/AudioFile;

    return-object v0
.end method

.method static synthetic access$002(Lcom/vkontakte/android/fragments/AudioListFragment;Lcom/vkontakte/android/AudioFile;)Lcom/vkontakte/android/AudioFile;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/AudioListFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/AudioFile;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->nowPlaying:Lcom/vkontakte/android/AudioFile;

    return-object p1
.end method

.method static synthetic access$100(Lcom/vkontakte/android/fragments/AudioListFragment;)Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/AudioListFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->adapter:Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/vkontakte/android/fragments/AudioListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/AudioListFragment;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->loadRecommendations()V

    return-void
.end method

.method static synthetic access$1100(Lcom/vkontakte/android/fragments/AudioListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/AudioListFragment;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->loadSaved()V

    return-void
.end method

.method static synthetic access$1200(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/AudioListFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->playlists:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/AudioListFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->searchLoader:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/vkontakte/android/fragments/AudioListFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/AudioListFragment;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->searchLoader:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/vkontakte/android/fragments/AudioListFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/AudioListFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/vkontakte/android/fragments/AudioListFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/AudioListFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/AudioListFragment;->loadSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/vkontakte/android/fragments/AudioListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/AudioListFragment;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->searching:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/vkontakte/android/fragments/AudioListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/AudioListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->searching:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/vkontakte/android/fragments/AudioListFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/AudioListFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/AudioListFragment;->doLocalSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/AudioListFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->localSearchResults:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/AudioListFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->searchResults:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkontakte/android/fragments/AudioListFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/AudioListFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/vkontakte/android/fragments/AudioListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/AudioListFragment;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->select:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/vkontakte/android/fragments/AudioListFragment;)Landroid/widget/ArrayAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/AudioListFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/vkontakte/android/fragments/AudioListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/AudioListFragment;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->animatingTransitionOut:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/vkontakte/android/fragments/AudioListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/AudioListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->animatingTransitionOut:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/vkontakte/android/fragments/AudioListFragment;)Lcom/vkontakte/android/APIRequest;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/AudioListFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/vkontakte/android/fragments/AudioListFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/AudioListFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/APIRequest;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/vkontakte/android/fragments/AudioListFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/AudioListFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/APIRequest;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->errorRequest:Lcom/vkontakte/android/APIRequest;

    return-object p1
.end method

.method static synthetic access$300(Lcom/vkontakte/android/fragments/AudioListFragment;Lcom/vkontakte/android/AudioFile;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/AudioListFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/AudioFile;
    .param p2, "x2"    # Z

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/fragments/AudioListFragment;->animateBottomBar(Lcom/vkontakte/android/AudioFile;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/vkontakte/android/fragments/AudioListFragment;Lcom/vkontakte/android/AudioFile;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/AudioListFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/AudioFile;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/AudioListFragment;->showBottomBar(Lcom/vkontakte/android/AudioFile;)V

    return-void
.end method

.method static synthetic access$500(Lcom/vkontakte/android/fragments/AudioListFragment;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/AudioListFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/fragments/AudioListFragment;->animateStateTransition(IZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/vkontakte/android/fragments/AudioListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/AudioListFragment;

    .prologue
    .line 67
    iget v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->uid:I

    return v0
.end method

.method static synthetic access$700(Lcom/vkontakte/android/fragments/AudioListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/AudioListFragment;

    .prologue
    .line 67
    iget v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->currentPlaylist:I

    return v0
.end method

.method static synthetic access$702(Lcom/vkontakte/android/fragments/AudioListFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/AudioListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->currentPlaylist:I

    return p1
.end method

.method static synthetic access$800(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/AudioListFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->displayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/vkontakte/android/fragments/AudioListFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/AudioListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/AudioListFragment;->setCurrentPlaylist(I)V

    return-void
.end method

.method private animateBottomBar(Lcom/vkontakte/android/AudioFile;Z)V
    .locals 13
    .param p1, "f"    # Lcom/vkontakte/android/AudioFile;
    .param p2, "forward"    # Z

    .prologue
    .line 685
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    const v3, 0x7f08004d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ViewFlipper;

    .line 686
    .local v12, "vs":Landroid/widget/ViewFlipper;
    invoke-virtual {v12}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v12, v2}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 687
    .local v11, "v":Landroid/view/View;
    const v2, 0x7f080050

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p1, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 688
    const v2, 0x7f08004f

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p1, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 689
    const v2, 0x7f080050

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 690
    const v2, 0x7f08004f

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 691
    const v2, 0x7f08004e

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 692
    .local v10, "iv":Landroid/widget/ImageView;
    iget v2, p1, Lcom/vkontakte/android/AudioFile;->oid:I

    iget v3, p1, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-direct {p0, v2, v3, v10}, Lcom/vkontakte/android/fragments/AudioListFragment;->getAndShowCover(IILandroid/widget/ImageView;)V

    .line 693
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz p2, :cond_1

    const/high16 v6, 0x3f800000    # 1.0f

    :goto_1
    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 694
    .local v0, "in":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 695
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 696
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-eqz p2, :cond_2

    const/high16 v9, -0x40800000    # -1.0f

    :goto_2
    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 697
    .local v1, "out":Landroid/view/animation/Animation;
    const v2, 0x7f080051

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    iget-boolean v2, v2, Lcom/vkontakte/android/AudioPlayerService;->initing:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 698
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 699
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 700
    invoke-virtual {v12, v0}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 701
    invoke-virtual {v12, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 702
    invoke-virtual {v12}, Landroid/widget/ViewFlipper;->showNext()V

    .line 703
    return-void

    .line 686
    .end local v0    # "in":Landroid/view/animation/Animation;
    .end local v1    # "out":Landroid/view/animation/Animation;
    .end local v10    # "iv":Landroid/widget/ImageView;
    .end local v11    # "v":Landroid/view/View;
    :cond_0
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 693
    .restart local v10    # "iv":Landroid/widget/ImageView;
    .restart local v11    # "v":Landroid/view/View;
    :cond_1
    const/high16 v6, -0x40800000    # -1.0f

    goto :goto_1

    .line 696
    .restart local v0    # "in":Landroid/view/animation/Animation;
    :cond_2
    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_2

    .line 697
    .restart local v1    # "out":Landroid/view/animation/Animation;
    :cond_3
    const/16 v2, 0x8

    goto :goto_3
.end method

.method private animateStateTransition(IZ)V
    .locals 10
    .param p1, "item"    # I
    .param p2, "in"    # Z

    .prologue
    .line 590
    const-string v5, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Animate "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

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

    .line 591
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-ge v5, v6, :cond_1

    .line 592
    iget-object v5, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->adapter:Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;

    invoke-virtual {v5}, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->notifyDataSetChanged()V

    .line 657
    :cond_0
    :goto_0
    return-void

    .line 595
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

    .line 596
    iget-object v5, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    add-int/2addr v5, p1

    iget-object v6, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v1, v5, v6

    .line 597
    .local v1, "childIdx":I
    iget-object v5, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 598
    .local v4, "v":Landroid/view/View;
    const/high16 v5, 0x420c0000    # 35.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    .line 599
    .local v2, "iconSize":I
    if-eqz p2, :cond_3

    .line 600
    const v5, 0x7f080059

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 602
    const v5, 0x7f080059

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f0200b2

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 603
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_0

    .line 604
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 605
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

    .line 606
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

    .line 607
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

    .line 608
    iget-object v5, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v5

    if-lez v5, :cond_2

    .line 609
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

    .line 610
    :cond_2
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 611
    .local v3, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 612
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 615
    .end local v0    # "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v3    # "set":Landroid/animation/AnimatorSet;
    :cond_3
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->animatingTransitionOut:Z

    .line 616
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_0

    .line 617
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 618
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

    .line 619
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

    .line 620
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

    .line 621
    iget-object v5, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v5

    if-lez v5, :cond_4

    .line 622
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

    .line 623
    :cond_4
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 624
    .restart local v3    # "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 625
    new-instance v5, Lcom/vkontakte/android/fragments/AudioListFragment$15;

    invoke-direct {v5, p0, v4}, Lcom/vkontakte/android/fragments/AudioListFragment$15;-><init>(Lcom/vkontakte/android/fragments/AudioListFragment;Landroid/view/View;)V

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 653
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 609
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private doLocalSearch(Ljava/lang/String;)V
    .locals 6
    .param p1, "q"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 846
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->localSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 847
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 848
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->displayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/AudioFile;

    .line 849
    .local v0, "f":Lcom/vkontakte/android/AudioFile;
    iget-object v2, v0, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gt v2, v3, :cond_1

    iget-object v2, v0, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-le v2, v3, :cond_0

    .line 850
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->localSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 852
    .end local v0    # "f":Lcom/vkontakte/android/AudioFile;
    :cond_2
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->adapter:Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;

    if-nez v2, :cond_4

    .line 865
    :cond_3
    :goto_1
    return-void

    .line 853
    :cond_4
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->adapter:Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->notifyDataSetChanged()V

    .line 854
    iget-boolean v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->searching:Z

    if-eqz v2, :cond_5

    .line 855
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    const v3, 0x7f0d01b8

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    .line 856
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->localSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 857
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->contentWrap:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {v2, v5}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->setVisibility(I)V

    .line 858
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 861
    :cond_5
    iget-object v3, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    iget v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->uid:I

    if-nez v2, :cond_6

    const v2, 0x7f0d0191

    :goto_2
    invoke-virtual {v3, v2}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    .line 862
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->contentWrap:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {v2, v4}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->setVisibility(I)V

    .line 863
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 861
    :cond_6
    const v2, 0x7f0d0190

    goto :goto_2
.end method

.method private getAndShowCover(IILandroid/widget/ImageView;)V
    .locals 3
    .param p1, "oid"    # I
    .param p2, "aid"    # I
    .param p3, "iv"    # Landroid/widget/ImageView;

    .prologue
    .line 706
    const v0, 0x7f020013

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 707
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GET COVER "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

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

    .line 708
    const/4 v0, 0x1

    new-instance v1, Lcom/vkontakte/android/fragments/AudioListFragment$16;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/vkontakte/android/fragments/AudioListFragment$16;-><init>(Lcom/vkontakte/android/fragments/AudioListFragment;IILandroid/widget/ImageView;)V

    invoke-static {p2, p1, v0, v1}, Lcom/vkontakte/android/cache/AlbumArtRetriever;->getCoverImage(IIILcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;)V

    .line 725
    return-void
.end method

.method private loadRecommendations()V
    .locals 2

    .prologue
    .line 787
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 788
    :cond_0
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->refreshing:Z

    if-nez v0, :cond_1

    .line 789
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->showProgress()V

    .line 790
    :cond_1
    new-instance v0, Lcom/vkontakte/android/api/AudioGetRecommendations;

    iget v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->uid:I

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/AudioGetRecommendations;-><init>(I)V

    new-instance v1, Lcom/vkontakte/android/fragments/AudioListFragment$18;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/AudioListFragment$18;-><init>(Lcom/vkontakte/android/fragments/AudioListFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/AudioGetRecommendations;->setCallback(Lcom/vkontakte/android/api/AudioGetRecommendations$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    .line 812
    return-void
.end method

.method private loadSaved()V
    .locals 2

    .prologue
    .line 870
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 871
    :cond_0
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->refreshing:Z

    if-nez v0, :cond_1

    .line 872
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->showProgress()V

    .line 873
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/fragments/AudioListFragment$20;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/AudioListFragment$20;-><init>(Lcom/vkontakte/android/fragments/AudioListFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 885
    return-void
.end method

.method private loadSearch(Ljava/lang/String;)V
    .locals 2
    .param p1, "q"    # Ljava/lang/String;

    .prologue
    .line 815
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 816
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    if-eqz v0, :cond_1

    .line 817
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 818
    :cond_1
    new-instance v0, Lcom/vkontakte/android/api/AudioSearch;

    invoke-direct {v0, p1}, Lcom/vkontakte/android/api/AudioSearch;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/vkontakte/android/fragments/AudioListFragment$19;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/AudioListFragment$19;-><init>(Lcom/vkontakte/android/fragments/AudioListFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/AudioSearch;->setCallback(Lcom/vkontakte/android/api/AudioSearch$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    .line 843
    return-void
.end method

.method private setCurrentPlaylist(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x0

    .line 728
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 729
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->loadData()V

    .line 742
    :cond_0
    :goto_0
    return-void

    .line 732
    :cond_1
    iput p1, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->currentPlaylist:I

    .line 733
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->displayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 734
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/AudioFile;

    .line 735
    .local v0, "f":Lcom/vkontakte/android/AudioFile;
    if-eqz p1, :cond_3

    iget v2, v0, Lcom/vkontakte/android/AudioFile;->playlistID:I

    if-ne v2, p1, :cond_2

    .line 736
    :cond_3
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->displayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 738
    .end local v0    # "f":Lcom/vkontakte/android/AudioFile;
    :cond_4
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->adapter:Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;

    if-eqz v2, :cond_5

    .line 739
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->adapter:Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->notifyDataSetChanged()V

    .line 740
    :cond_5
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->list:Landroid/widget/ListView;

    if-eqz v2, :cond_0

    .line 741
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v2, v3, v3}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_0
.end method

.method private showBottomBar(Lcom/vkontakte/android/AudioFile;)V
    .locals 11
    .param p1, "f"    # Lcom/vkontakte/android/AudioFile;

    .prologue
    const v7, 0x7f080050

    const v6, 0x7f08004f

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 667
    iget-object v3, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    const v4, 0x7f08004d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ViewFlipper;

    .line 668
    .local v10, "vs":Landroid/widget/ViewFlipper;
    invoke-virtual {v10}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v3

    invoke-virtual {v10, v3}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 669
    .local v9, "v":Landroid/view/View;
    invoke-virtual {v9, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p1, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 670
    invoke-virtual {v9, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p1, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 671
    invoke-virtual {v9, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setSelected(Z)V

    .line 672
    invoke-virtual {v9, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setSelected(Z)V

    .line 673
    iget v4, p1, Lcom/vkontakte/android/AudioFile;->oid:I

    iget v6, p1, Lcom/vkontakte/android/AudioFile;->aid:I

    const v3, 0x7f08004e

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-direct {p0, v4, v6, v3}, Lcom/vkontakte/android/fragments/AudioListFragment;->getAndShowCover(IILandroid/widget/ImageView;)V

    .line 674
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 675
    .local v0, "in":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 676
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 677
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 678
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 679
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

    .line 680
    const v2, 0x7f080051

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget-object v3, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    iget-boolean v3, v3, Lcom/vkontakte/android/AudioPlayerService;->initing:Z

    if-eqz v3, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 681
    return-void

    .line 680
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private updateBottomBarButtons()V
    .locals 6

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x0

    .line 660
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

    .line 661
    .local v0, "dw":F
    const/high16 v3, 0x43fa0000    # 500.0f

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_0

    const/4 v1, 0x1

    .line 662
    .local v1, "showBtns":Z
    :goto_0
    iget-object v3, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    const v5, 0x7f080052

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v1, :cond_1

    move v3, v2

    :goto_1
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 663
    iget-object v3, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    const v5, 0x7f080054

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v1, :cond_2

    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 664
    return-void

    .end local v1    # "showBtns":Z
    :cond_0
    move v1, v2

    .line 661
    goto :goto_0

    .restart local v1    # "showBtns":Z
    :cond_1
    move v3, v4

    .line 662
    goto :goto_1

    :cond_2
    move v2, v4

    .line 663
    goto :goto_2
.end method

.method private updateNavItems()V
    .locals 7

    .prologue
    const v6, 0x7f0d0252

    .line 518
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 519
    iget v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->uid:I

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    if-ne v0, v1, :cond_1

    .line 520
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    const v1, 0x7f0d0173

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/fragments/AudioListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 521
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/fragments/AudioListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 527
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    const v1, 0x7f0d003e

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/fragments/AudioListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 528
    new-instance v0, Lcom/vkontakte/android/api/AudioGetAlbums;

    iget v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->uid:I

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/AudioGetAlbums;-><init>(I)V

    new-instance v1, Lcom/vkontakte/android/fragments/AudioListFragment$14;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/AudioListFragment$14;-><init>(Lcom/vkontakte/android/fragments/AudioListFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/AudioGetAlbums;->setCallback(Lcom/vkontakte/android/api/AudioGetAlbums$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 546
    return-void

    .line 523
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    const v1, 0x7f0d0355

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

    .line 524
    iget v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->uid:I

    if-lez v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/fragments/AudioListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected cancelLoading()V
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 782
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    .line 784
    :cond_0
    return-void
.end method

.method protected createListView()Landroid/widget/ListView;
    .locals 2

    .prologue
    .line 493
    new-instance v0, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 494
    .local v0, "l":Landroid/widget/ListView;
    return-object v0
.end method

.method protected doLoadData()V
    .locals 2

    .prologue
    .line 746
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 747
    :cond_0
    iget v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->currentPlaylist:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 748
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->loadRecommendations()V

    .line 777
    :goto_0
    return-void

    .line 751
    :cond_1
    iget v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->currentPlaylist:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    .line 752
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->loadSaved()V

    goto :goto_0

    .line 755
    :cond_2
    new-instance v0, Lcom/vkontakte/android/api/AudioGet;

    iget v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->uid:I

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/AudioGet;-><init>(I)V

    new-instance v1, Lcom/vkontakte/android/fragments/AudioListFragment$17;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/AudioListFragment$17;-><init>(Lcom/vkontakte/android/fragments/AudioListFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/AudioGet;->setCallback(Lcom/vkontakte/android/api/AudioGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method protected getAdapter()Landroid/widget/ListAdapter;
    .locals 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->adapter:Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;-><init>(Lcom/vkontakte/android/fragments/AudioListFragment;Lcom/vkontakte/android/fragments/AudioListFragment$1;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->adapter:Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->adapter:Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;

    return-object v0
.end method

.method protected getEmptyText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 505
    const v0, 0x7f0d0190

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/fragments/AudioListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 12
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    const/4 v7, 0x1

    const/4 v11, 0x0

    .line 191
    invoke-super {p0, p1}, Lcom/vkontakte/android/fragments/BaseListFragment;->onAttach(Landroid/app/Activity;)V

    .line 192
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v8, "select"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->select:Z

    .line 193
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v8, "uid"

    sget v9, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->uid:I

    .line 194
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "audio"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->uid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/vkontakte/android/ActivityUtils;->setBeamLink(Landroid/app/Activity;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 197
    const-string v6, ""

    invoke-virtual {p1, v6}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 199
    invoke-static {p1}, Lcom/vkontakte/android/cache/AudioCache;->fillIDs(Landroid/content/Context;)V

    .line 204
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 205
    .local v2, "sa":Landroid/app/Activity;
    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 206
    new-instance v6, Lcom/vkontakte/android/fragments/AudioListFragment$2;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f03004d

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v6, p0, v8, v9, v10}, Lcom/vkontakte/android/fragments/AudioListFragment$2;-><init>(Lcom/vkontakte/android/fragments/AudioListFragment;Landroid/content/Context;ILjava/util/List;)V

    iput-object v6, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    .line 211
    iget-object v6, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    const v8, 0x1090009

    invoke-virtual {v6, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 212
    new-instance v0, Lcom/vkontakte/android/fragments/AudioListFragment$3;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/AudioListFragment$3;-><init>(Lcom/vkontakte/android/fragments/AudioListFragment;)V

    .line 237
    .local v0, "navListener":Landroid/app/ActionBar$OnNavigationListener;
    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    iget-object v8, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6, v8, v0}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 238
    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 239
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->updateNavItems()V

    .line 241
    new-instance v6, Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->searchView:Landroid/widget/SearchView;

    .line 242
    iget-object v6, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->searchView:Landroid/widget/SearchView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0278

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 244
    :try_start_0
    const-class v6, Landroid/widget/SearchView;

    const-string v8, "mSearchButton"

    invoke-virtual {v6, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 245
    .local v4, "searchField":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 246
    iget-object v6, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 247
    .local v3, "searchBtn":Landroid/widget/ImageView;
    const v6, 0x7f02008d

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 248
    const-class v6, Landroid/widget/SearchView;

    const-string v8, "mSearchPlate"

    invoke-virtual {v6, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 249
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 250
    iget-object v6, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 251
    .local v5, "searchPlate":Landroid/widget/LinearLayout;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v8, -0x7f000001

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setHintTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    .end local v3    # "searchBtn":Landroid/widget/ImageView;
    .end local v4    # "searchField":Ljava/lang/reflect/Field;
    .end local v5    # "searchPlate":Landroid/widget/LinearLayout;
    :goto_0
    iget-object v6, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->searchView:Landroid/widget/SearchView;

    new-instance v8, Lcom/vkontakte/android/fragments/AudioListFragment$4;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/fragments/AudioListFragment$4;-><init>(Lcom/vkontakte/android/fragments/AudioListFragment;)V

    invoke-virtual {v6, v8}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 288
    iget-object v6, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->searchView:Landroid/widget/SearchView;

    new-instance v8, Lcom/vkontakte/android/fragments/AudioListFragment$5;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/fragments/AudioListFragment$5;-><init>(Lcom/vkontakte/android/fragments/AudioListFragment;)V

    invoke-virtual {v6, v8}, Landroid/widget/SearchView;->setOnSearchClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    iget-object v6, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->searchView:Landroid/widget/SearchView;

    new-instance v8, Lcom/vkontakte/android/fragments/AudioListFragment$6;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/fragments/AudioListFragment$6;-><init>(Lcom/vkontakte/android/fragments/AudioListFragment;)V

    invoke-virtual {v6, v8}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 302
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/fragments/AudioListFragment;->setHasOptionsMenu(Z)V

    .line 304
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v8, "search"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "search"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, "q":Ljava/lang/String;
    iget-object v6, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v6, v11}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 307
    iget-object v6, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v6, v1, v11}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 308
    iget-object v6, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v6}, Landroid/widget/SearchView;->clearFocus()V

    .line 309
    invoke-direct {p0, v1}, Lcom/vkontakte/android/fragments/AudioListFragment;->loadSearch(Ljava/lang/String;)V

    .line 317
    .end local v1    # "q":Ljava/lang/String;
    :goto_1
    return-void

    .line 311
    :cond_0
    invoke-static {}, Lcom/vkontakte/android/NetworkStateReceiver;->isConnected()Z

    move-result v6

    if-nez v6, :cond_1

    iget v6, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->uid:I

    sget v8, Lcom/vkontakte/android/Global;->uid:I

    if-eq v6, v8, :cond_2

    .line 312
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->loadData()V

    goto :goto_1

    .line 314
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    iget v6, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->uid:I

    if-lez v6, :cond_3

    const/4 v6, 0x2

    :goto_2
    invoke-virtual {v8, v6}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_1

    :cond_3
    move v6, v7

    goto :goto_2

    .line 252
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "cfg"    # Landroid/content/res/Configuration;

    .prologue
    .line 585
    invoke-super {p0, p1}, Lcom/vkontakte/android/fragments/BaseListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 586
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->updateBottomBarButtons()V

    .line 587
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 549
    invoke-super {p0, p1}, Lcom/vkontakte/android/fragments/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 550
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 551
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.vkontakte.android.UPDATE_AUDIO_LISTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 552
    const-string v1, "com.vkontakte.android.SERVICE_STOPPING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 553
    const-string v1, "com.vkontakte.android.ALBUM_ART_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 554
    const-string v1, "com.vkontakte.android.AUDIO_FILE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 555
    const-string v1, "com.vkontakte.android.AUDIO_FILE_DELETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 556
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 557
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 509
    const-string v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalidate menu, removing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->isRemoving()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->isRemoving()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 515
    :goto_0
    return-void

    .line 511
    :cond_0
    const v1, 0x7f0d0278

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 512
    .local v0, "search":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 513
    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->searchView:Landroid/widget/SearchView;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 514
    invoke-super {p0, p1, p2}, Lcom/vkontakte/android/fragments/BaseListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "state"    # Landroid/os/Bundle;

    .prologue
    .line 320
    invoke-super {p0, p1, p2, p3}, Lcom/vkontakte/android/fragments/BaseListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 322
    .local v1, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->list:Landroid/widget/ListView;

    new-instance v4, Lcom/vkontakte/android/fragments/AudioListFragment$7;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/fragments/AudioListFragment$7;-><init>(Lcom/vkontakte/android/fragments/AudioListFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 368
    iget-object v3, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->list:Landroid/widget/ListView;

    new-instance v4, Lcom/vkontakte/android/fragments/AudioListFragment$8;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/fragments/AudioListFragment$8;-><init>(Lcom/vkontakte/android/fragments/AudioListFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 390
    iget-object v3, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b000f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 391
    iget-object v3, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->list:Landroid/widget/ListView;

    const/high16 v4, 0x2000000

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 392
    iget-object v3, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->list:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 393
    iget-object v3, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->list:Landroid/widget/ListView;

    new-instance v4, Lcom/vkontakte/android/fragments/AudioListFragment$9;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/fragments/AudioListFragment$9;-><init>(Lcom/vkontakte/android/fragments/AudioListFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 412
    const v3, 0x7f030011

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    .line 413
    iget-object v3, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 414
    iget-object v3, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    const/high16 v7, 0x42680000    # 58.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    const/16 v8, 0x50

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 415
    iget-object v3, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    const v4, 0x7f080053

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/vkontakte/android/fragments/AudioListFragment$10;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/fragments/AudioListFragment$10;-><init>(Lcom/vkontakte/android/fragments/AudioListFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    iget-object v3, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    const v4, 0x7f080052

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/vkontakte/android/fragments/AudioListFragment$11;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/fragments/AudioListFragment$11;-><init>(Lcom/vkontakte/android/fragments/AudioListFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    iget-object v3, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    const v4, 0x7f080054

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/vkontakte/android/fragments/AudioListFragment$12;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/fragments/AudioListFragment$12;-><init>(Lcom/vkontakte/android/fragments/AudioListFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    iget-object v3, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    const v4, 0x7f08004d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/vkontakte/android/fragments/AudioListFragment$13;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/fragments/AudioListFragment$13;-><init>(Lcom/vkontakte/android/fragments/AudioListFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    sget-object v3, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v3, :cond_0

    .line 447
    sget-object v3, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v3}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->nowPlaying:Lcom/vkontakte/android/AudioFile;

    .line 448
    iget-object v3, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->nowPlaying:Lcom/vkontakte/android/AudioFile;

    if-eqz v3, :cond_0

    .line 449
    iget-object v3, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 450
    iget-object v3, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    const v4, 0x7f08004d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ViewFlipper;

    .line 451
    .local v2, "vs":Landroid/widget/ViewFlipper;
    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 452
    .local v0, "v":Landroid/view/View;
    const v3, 0x7f080050

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->nowPlaying:Lcom/vkontakte/android/AudioFile;

    iget-object v4, v4, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    const v3, 0x7f08004f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->nowPlaying:Lcom/vkontakte/android/AudioFile;

    iget-object v4, v4, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    const v3, 0x7f080050

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    .line 455
    const v3, 0x7f08004f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    .line 456
    iget-object v3, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->nowPlaying:Lcom/vkontakte/android/AudioFile;

    iget v4, v3, Lcom/vkontakte/android/AudioFile;->oid:I

    iget-object v3, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->nowPlaying:Lcom/vkontakte/android/AudioFile;

    iget v5, v3, Lcom/vkontakte/android/AudioFile;->aid:I

    const v3, 0x7f08004e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-direct {p0, v4, v5, v3}, Lcom/vkontakte/android/fragments/AudioListFragment;->getAndShowCover(IILandroid/widget/ImageView;)V

    .line 457
    iget-object v3, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    const v4, 0x7f080053

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget-object v4, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v4}, Lcom/vkontakte/android/AudioPlayerService;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x7f0200ae

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 458
    const v3, 0x7f080051

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    sget-object v3, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    iget-boolean v3, v3, Lcom/vkontakte/android/AudioPlayerService;->initing:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 459
    iget-object v3, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->list:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v6

    const/high16 v7, 0x42680000    # 58.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 462
    .end local v0    # "v":Landroid/view/View;
    .end local v2    # "vs":Landroid/widget/ViewFlipper;
    :cond_0
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->updateBottomBarButtons()V

    .line 464
    return-object v1

    .line 457
    .restart local v0    # "v":Landroid/view/View;
    .restart local v2    # "vs":Landroid/widget/ViewFlipper;
    :cond_1
    const v4, 0x7f0200af

    goto :goto_0

    .line 458
    :cond_2
    const/16 v3, 0x8

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 560
    invoke-super {p0}, Lcom/vkontakte/android/fragments/BaseListFragment;->onDestroy()V

    .line 562
    :try_start_0
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 565
    :cond_0
    return-void

    .line 563
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 482
    invoke-super {p0}, Lcom/vkontakte/android/fragments/BaseListFragment;->onDestroyView()V

    .line 483
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    .line 484
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 487
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 488
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 489
    invoke-super {p0}, Lcom/vkontakte/android/fragments/BaseListFragment;->onDetach()V

    .line 490
    return-void
.end method

.method protected onErrorRetryClick()V
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->errorRequest:Lcom/vkontakte/android/APIRequest;

    if-nez v0, :cond_0

    .line 473
    :goto_0
    return-void

    .line 470
    :cond_0
    invoke-super {p0}, Lcom/vkontakte/android/fragments/BaseListFragment;->onErrorRetryClick()V

    .line 471
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->errorRequest:Lcom/vkontakte/android/APIRequest;

    iput-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    .line 472
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->errorRequest:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 578
    invoke-super {p0}, Lcom/vkontakte/android/fragments/BaseListFragment;->onPause()V

    .line 580
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 581
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 582
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 568
    invoke-super {p0}, Lcom/vkontakte/android/fragments/BaseListFragment;->onResume()V

    .line 569
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 570
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 571
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 572
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->playerBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 573
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment;->adapter:Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->notifyDataSetChanged()V

    .line 575
    :cond_0
    return-void
.end method

.method protected setListViewAppearance(Landroid/widget/ListView;)V
    .locals 2
    .param p1, "l"    # Landroid/widget/ListView;

    .prologue
    .line 499
    const v0, 0x7f020077

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelector(I)V

    .line 500
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0x201d1b

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 501
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 502
    return-void
.end method
