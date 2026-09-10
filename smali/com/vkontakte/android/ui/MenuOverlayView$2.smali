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

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommunitySelected(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 210
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView$2;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/WallActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "wall_id"

    neg-int v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 212
    const-string v1, "force_tabs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 213
    sget-object v1, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/MainActivity;->openActivity(Landroid/content/Intent;)V

    .line 214
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView$2;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->closeMenu()V

    .line 215
    return-void
.end method

.method public onMenuItemSelected(I)V
    .locals 4
    .param p1, "item"    # I

    .prologue
    .line 164
    packed-switch p1, :pswitch_data_0

    .line 205
    :goto_0
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    const/4 v1, -0x2

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView$2;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->closeMenu()V

    .line 206
    :cond_0
    return-void

    .line 166
    :pswitch_0
    sget-object v1, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/MainActivity;->setTab(I)V

    goto :goto_0

    .line 169
    :pswitch_1
    sget-object v1, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/MainActivity;->setTab(I)V

    goto :goto_0

    .line 172
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView$2;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/PhotoAlbumListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 173
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "uid"

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    const-string v1, "title"

    iget-object v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView$2;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/MenuOverlayView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901c7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    sget-object v1, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/MainActivity;->openActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 178
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView$2;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/VideoListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 179
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "uid"

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 180
    sget-object v1, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/MainActivity;->openActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 183
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_4
    sget-object v1, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/MainActivity;->setTab(I)V

    goto :goto_0

    .line 186
    :pswitch_5
    sget-object v1, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/MainActivity;->setTab(I)V

    goto :goto_0

    .line 189
    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView$2;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/GroupsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 190
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "uid"

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 191
    sget-object v1, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/MainActivity;->openActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 194
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_7
    sget-object v1, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/MainActivity;->setTab(I)V

    goto/16 :goto_0

    .line 197
    :pswitch_8
    sget-object v1, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/MainActivity;->showSettings()V

    goto/16 :goto_0

    .line 200
    :pswitch_9
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView$2;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/MainActivity;->showAbout(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 203
    :pswitch_a
    sget-object v1, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/MainActivity;->exitApp()V

    goto/16 :goto_0

    .line 164
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onUserSelected(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 154
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView$2;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/WallActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "wall_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    const-string v1, "force_tabs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 157
    sget-object v1, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/MainActivity;->openActivity(Landroid/content/Intent;)V

    .line 158
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView$2;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->closeMenu()V

    .line 159
    return-void
.end method
