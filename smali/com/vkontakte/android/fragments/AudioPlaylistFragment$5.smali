.class Lcom/vkontakte/android/fragments/AudioPlaylistFragment$5;
.super Ljava/lang/Object;
.source "AudioPlaylistFragment.java"

# interfaces
.implements Lcom/vkontakte/android/ui/SwipeDismissListViewTouchListener$DismissCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/AudioPlaylistFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$5;->this$0:Lcom/vkontakte/android/fragments/AudioPlaylistFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canDismiss(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 222
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerService;->getPlaylistPosition()I

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismiss(Landroid/widget/ListView;[I)V
    .locals 5
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "reverseSortedPositions"    # [I

    .prologue
    .line 211
    sget-object v4, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-nez v4, :cond_1

    .line 218
    :cond_0
    return-void

    .line 212
    :cond_1
    move-object v0, p2

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, v0, v1

    .line 213
    .local v3, "pos":I
    sget-object v4, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v4, v3}, Lcom/vkontakte/android/AudioPlayerService;->removePlaylistItem(I)V

    .line 214
    iget-object v4, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$5;->this$0:Lcom/vkontakte/android/fragments/AudioPlaylistFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->access$700(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 215
    iget-object v4, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$5;->this$0:Lcom/vkontakte/android/fragments/AudioPlaylistFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->access$200(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;)Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 216
    iget-object v4, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$5;->this$0:Lcom/vkontakte/android/fragments/AudioPlaylistFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->access$200(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;)Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;->notifyDataSetChanged()V

    .line 212
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
