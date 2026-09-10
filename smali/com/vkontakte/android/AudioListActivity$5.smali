.class Lcom/vkontakte/android/AudioListActivity$5;
.super Ljava/lang/Object;
.source "AudioListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioListActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioListActivity$5;->this$0:Lcom/vkontakte/android/AudioListActivity;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/AudioListActivity$5;)Lcom/vkontakte/android/AudioListActivity;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity$5;->this$0:Lcom/vkontakte/android/AudioListActivity;

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v3, 0x7f060018

    .line 168
    iget-object v2, p0, Lcom/vkontakte/android/AudioListActivity$5;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/AudioListActivity;->getListView()Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr p3, v2

    .line 170
    iget-object v2, p0, Lcom/vkontakte/android/AudioListActivity$5;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-static {v2}, Lcom/vkontakte/android/AudioListActivity;->access$7(Lcom/vkontakte/android/AudioListActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 171
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 172
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/vkontakte/android/AudioListActivity$5;->this$0:Lcom/vkontakte/android/AudioListActivity;

    iget-object v2, v2, Lcom/vkontakte/android/AudioListActivity;->audios:[Lcom/vkontakte/android/AudioFile;

    array-length v2, v2

    if-ge p3, v2, :cond_1

    const-string v2, "audio"

    iget-object v3, p0, Lcom/vkontakte/android/AudioListActivity$5;->this$0:Lcom/vkontakte/android/AudioListActivity;

    iget-object v3, v3, Lcom/vkontakte/android/AudioListActivity;->audios:[Lcom/vkontakte/android/AudioFile;

    aget-object v3, v3, p3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 174
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/AudioListActivity$5;->this$0:Lcom/vkontakte/android/AudioListActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Lcom/vkontakte/android/AudioListActivity;->setResult(ILandroid/content/Intent;)V

    .line 175
    iget-object v2, p0, Lcom/vkontakte/android/AudioListActivity$5;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/AudioListActivity;->finish()V

    .line 216
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 173
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v2, "audio"

    iget-object v3, p0, Lcom/vkontakte/android/AudioListActivity$5;->this$0:Lcom/vkontakte/android/AudioListActivity;

    iget-object v3, v3, Lcom/vkontakte/android/AudioListActivity;->searchResults:[Lcom/vkontakte/android/AudioFile;

    iget-object v4, p0, Lcom/vkontakte/android/AudioListActivity$5;->this$0:Lcom/vkontakte/android/AudioListActivity;

    iget-object v4, v4, Lcom/vkontakte/android/AudioListActivity;->audios:[Lcom/vkontakte/android/AudioFile;

    array-length v4, v4

    sub-int v4, p3, v4

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 189
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 190
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 191
    .local v0, "_idx":I
    iget-object v2, p0, Lcom/vkontakte/android/AudioListActivity$5;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-static {v2}, Lcom/vkontakte/android/AudioListActivity;->access$1(Lcom/vkontakte/android/AudioListActivity;)Lcom/vkontakte/android/ui/SlidingDrawer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/SlidingDrawer;->setVisibility(I)V

    .line 192
    iget-object v2, p0, Lcom/vkontakte/android/AudioListActivity$5;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-static {v2}, Lcom/vkontakte/android/AudioListActivity;->access$1(Lcom/vkontakte/android/AudioListActivity;)Lcom/vkontakte/android/ui/SlidingDrawer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/SlidingDrawer;->animateOpen()V

    .line 193
    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkontakte/android/AudioPlayerService;->getPlaylistPosition()I

    move-result v2

    if-ne v2, v0, :cond_3

    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkontakte/android/AudioPlayerService;->getOid()I

    move-result v2

    iget-object v3, p0, Lcom/vkontakte/android/AudioListActivity$5;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-static {v3}, Lcom/vkontakte/android/AudioListActivity;->access$8(Lcom/vkontakte/android/AudioListActivity;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 194
    :cond_3
    iget-object v2, p0, Lcom/vkontakte/android/AudioListActivity$5;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-static {v2}, Lcom/vkontakte/android/AudioListActivity;->access$1(Lcom/vkontakte/android/AudioListActivity;)Lcom/vkontakte/android/ui/SlidingDrawer;

    move-result-object v2

    new-instance v3, Lcom/vkontakte/android/AudioListActivity$5$1;

    invoke-direct {v3, p0, v0}, Lcom/vkontakte/android/AudioListActivity$5$1;-><init>(Lcom/vkontakte/android/AudioListActivity$5;I)V

    .line 209
    const-wide/16 v4, 0x96

    .line 194
    invoke-virtual {v2, v3, v4, v5}, Lcom/vkontakte/android/ui/SlidingDrawer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 210
    iget-object v2, p0, Lcom/vkontakte/android/AudioListActivity$5;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-static {v2}, Lcom/vkontakte/android/AudioListActivity;->access$1(Lcom/vkontakte/android/AudioListActivity;)Lcom/vkontakte/android/ui/SlidingDrawer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/SlidingDrawer;->getContent()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/AudioPlayerView;

    iget-boolean v2, v2, Lcom/vkontakte/android/AudioPlayerView;->isRegistered:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/AudioListActivity$5;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-static {v2}, Lcom/vkontakte/android/AudioListActivity;->access$9(Lcom/vkontakte/android/AudioListActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_1
.end method
