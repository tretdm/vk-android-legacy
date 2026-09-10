.class Lcom/vkontakte/android/AudioPlayerView$10;
.super Ljava/lang/Object;
.source "AudioPlayerView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerView;->showBroadcastDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioPlayerView;

.field private final synthetic val$checked:[Z

.field private final synthetic val$ids:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerView;[ZLjava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerView$10;->this$0:Lcom/vkontakte/android/AudioPlayerView;

    iput-object p2, p0, Lcom/vkontakte/android/AudioPlayerView$10;->val$checked:[Z

    iput-object p3, p0, Lcom/vkontakte/android/AudioPlayerView$10;->val$ids:Ljava/util/ArrayList;

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 254
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v1, "newTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerView$10;->val$checked:[Z

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 258
    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v2, :cond_0

    .line 259
    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v2, v1}, Lcom/vkontakte/android/AudioPlayerService;->setBroadcast(Ljava/util/ArrayList;)V

    .line 260
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerView$10;->this$0:Lcom/vkontakte/android/AudioPlayerView;

    const v3, 0x7f080076

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setSelected(Z)V

    .line 261
    return-void

    .line 256
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerView$10;->val$checked:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerView$10;->val$ids:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method
