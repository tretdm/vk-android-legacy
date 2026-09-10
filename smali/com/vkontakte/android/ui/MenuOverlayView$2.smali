.class Lcom/vkontakte/android/ui/MenuOverlayView$2;
.super Ljava/lang/Object;
.source "MenuOverlayView.java"

# interfaces
.implements Lcom/vkontakte/android/MenuListView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/MenuOverlayView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/MenuOverlayView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/MenuOverlayView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/MenuOverlayView$2;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommunitySelected(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 233
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView$2;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/WallActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 234
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "wall_id"

    neg-int v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 235
    const-string v1, "force_tabs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 236
    sget-object v1, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/MainActivity;->openActivity(Landroid/content/Intent;)V

    .line 237
    :cond_0
    const-string v1, "left_group"

    invoke-static {v1}, Lcom/vkontakte/android/Global;->logStats(Ljava/lang/String;)V

    .line 238
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView$2;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->closeMenu()V

    .line 239
    return-void
.end method

.method public onMenuItemSelected(I)V
    .locals 4
    .param p1, "item"    # I

    .prologue
    .line 174
    sget-object v1, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    if-nez v1, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    if-ltz p1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "left_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/Global;->logStats(Ljava/lang/String;)V

    .line 177
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 228
    :cond_3
    :goto_1
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    const/4 v1, -0x2

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView$2;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->closeMenu()V

    goto :goto_0

    .line 179
    :sswitch_0
    sget-object v1, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/MainActivity;->setTab(I)V

    goto :goto_1

    .line 182
    :sswitch_1
    sget-object v1, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/MainActivity;->setTab(I)V

    goto :goto_1

    .line 185
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView$2;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/PhotoAlbumListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "uid"

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 187
    const-string v1, "title"

    iget-object v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView$2;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/MenuOverlayView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    sget-object v1, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/MainActivity;->openActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 191
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView$2;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/VideoListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "uid"

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 193
    sget-object v1, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/MainActivity;->openActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 196
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_4
    sget-object v1, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/MainActivity;->setTab(I)V

    goto :goto_1

    .line 199
    :sswitch_5
    sget-object v1, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/MainActivity;->setTab(I)V

    goto :goto_1

    .line 202
    :sswitch_6
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView$2;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/GroupsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 203
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "uid"

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 204
    sget-object v1, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/MainActivity;->openActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 207
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_7
    sget-object v1, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/MainActivity;->setTab(I)V

    goto/16 :goto_1

    .line 210
    :sswitch_8
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView$2;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/FaveActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 213
    .restart local v0    # "intent":Landroid/content/Intent;
    sget-object v1, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/MainActivity;->openActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 216
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_9
    sget-object v1, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/MainActivity;->showSettings()V

    goto/16 :goto_1

    .line 219
    :sswitch_a
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView$2;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/MainActivity;->showAbout(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 222
    :sswitch_b
    sget-object v1, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/MainActivity;->exitApp()V

    .line 224
    :sswitch_c
    sget-object v1, Lcom/vkontakte/android/MenuListView;->reminderIntent:Landroid/content/Intent;

    if-eqz v1, :cond_3

    .line 225
    sget-object v1, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    sget-object v2, Lcom/vkontakte/android/MenuListView;->reminderIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/MainActivity;->openActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 177
    nop

    :sswitch_data_0
    .sparse-switch
        -0x77359400 -> :sswitch_c
        -0x3 -> :sswitch_9
        -0x2 -> :sswitch_a
        -0x1 -> :sswitch_b
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
    .end sparse-switch
.end method

.method public onUserSelected(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 164
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView$2;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/WallActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "wall_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 166
    const-string v1, "force_tabs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 167
    sget-object v1, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/MainActivity;->openActivity(Landroid/content/Intent;)V

    .line 168
    const-string v1, "left_friend"

    invoke-static {v1}, Lcom/vkontakte/android/Global;->logStats(Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView$2;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->closeMenu()V

    .line 170
    return-void
.end method
