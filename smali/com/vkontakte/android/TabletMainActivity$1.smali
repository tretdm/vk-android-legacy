.class Lcom/vkontakte/android/TabletMainActivity$1;
.super Ljava/lang/Object;
.source "TabletMainActivity.java"

# interfaces
.implements Lcom/vkontakte/android/MenuListView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/TabletMainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/TabletMainActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/TabletMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/TabletMainActivity$1;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommunitySelected(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 170
    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$1;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    invoke-static {v1}, Lcom/vkontakte/android/TabletMainActivity;->access$1(Lcom/vkontakte/android/TabletMainActivity;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$1;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    invoke-static {v1}, Lcom/vkontakte/android/TabletMainActivity;->access$1(Lcom/vkontakte/android/TabletMainActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 171
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$1;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    const-class v2, Lcom/vkontakte/android/WallActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "wall_id"

    neg-int v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 173
    const-string v1, "force_tabs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$1;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    const-string v2, "tmp"

    invoke-static {v1, v2, v0}, Lcom/vkontakte/android/TabletMainActivity;->access$2(Lcom/vkontakte/android/TabletMainActivity;Ljava/lang/String;Landroid/content/Intent;)V

    .line 175
    return-void
.end method

.method public onMenuItemSelected(I)V
    .locals 4
    .param p1, "item"    # I

    .prologue
    .line 117
    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$1;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    invoke-static {v1}, Lcom/vkontakte/android/TabletMainActivity;->access$1(Lcom/vkontakte/android/TabletMainActivity;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$1;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    invoke-static {v1}, Lcom/vkontakte/android/TabletMainActivity;->access$1(Lcom/vkontakte/android/TabletMainActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 119
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 166
    :goto_0
    return-void

    .line 121
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$1;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    const-class v2, Lcom/vkontakte/android/WallActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "wall_id"

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$1;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    const-string v2, "mypage"

    invoke-static {v1, v2, v0}, Lcom/vkontakte/android/TabletMainActivity;->access$2(Lcom/vkontakte/android/TabletMainActivity;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 126
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$1;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    const-class v2, Lcom/vkontakte/android/FriendsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$1;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    const-string v2, "friends"

    invoke-static {v1, v2, v0}, Lcom/vkontakte/android/TabletMainActivity;->access$2(Lcom/vkontakte/android/TabletMainActivity;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 130
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$1;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    const-class v2, Lcom/vkontakte/android/PhotoAlbumListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "uid"

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    const-string v1, "title"

    iget-object v2, p0, Lcom/vkontakte/android/TabletMainActivity$1;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/TabletMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901c7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$1;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    const-string v2, "photos"

    invoke-static {v1, v2, v0}, Lcom/vkontakte/android/TabletMainActivity;->access$2(Lcom/vkontakte/android/TabletMainActivity;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 136
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$1;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    const-class v2, Lcom/vkontakte/android/VideoListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "uid"

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 138
    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$1;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    const-string v2, "videos"

    invoke-static {v1, v2, v0}, Lcom/vkontakte/android/TabletMainActivity;->access$2(Lcom/vkontakte/android/TabletMainActivity;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 141
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$1;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    const-class v2, Lcom/vkontakte/android/AudioListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 142
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$1;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    const-string v2, "audio"

    invoke-static {v1, v2, v0}, Lcom/vkontakte/android/TabletMainActivity;->access$2(Lcom/vkontakte/android/TabletMainActivity;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 145
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$1;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    const-class v2, Lcom/vkontakte/android/DialogsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$1;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    const-string v2, "messages"

    invoke-static {v1, v2, v0}, Lcom/vkontakte/android/TabletMainActivity;->access$2(Lcom/vkontakte/android/TabletMainActivity;Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 149
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$1;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    const-class v2, Lcom/vkontakte/android/GroupsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "uid"

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 151
    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$1;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    const-string v2, "groups"

    invoke-static {v1, v2, v0}, Lcom/vkontakte/android/TabletMainActivity;->access$2(Lcom/vkontakte/android/TabletMainActivity;Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 154
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_7
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$1;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    const-class v2, Lcom/vkontakte/android/NewsfeedActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$1;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    const-string v2, "news"

    invoke-static {v1, v2, v0}, Lcom/vkontakte/android/TabletMainActivity;->access$2(Lcom/vkontakte/android/TabletMainActivity;Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 158
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_8
    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$1;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/TabletMainActivity;->showSettings()V

    goto/16 :goto_0

    .line 161
    :pswitch_9
    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$1;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    invoke-static {v1}, Lcom/vkontakte/android/MainActivity;->showAbout(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 164
    :pswitch_a
    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$1;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/TabletMainActivity;->exitApp()V

    goto/16 :goto_0

    .line 119
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
    .line 108
    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$1;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    invoke-static {v1}, Lcom/vkontakte/android/TabletMainActivity;->access$1(Lcom/vkontakte/android/TabletMainActivity;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$1;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    invoke-static {v1}, Lcom/vkontakte/android/TabletMainActivity;->access$1(Lcom/vkontakte/android/TabletMainActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 109
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$1;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    const-class v2, Lcom/vkontakte/android/WallActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "wall_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 111
    const-string v1, "force_tabs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$1;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    const-string v2, "tmp"

    invoke-static {v1, v2, v0}, Lcom/vkontakte/android/TabletMainActivity;->access$2(Lcom/vkontakte/android/TabletMainActivity;Ljava/lang/String;Landroid/content/Intent;)V

    .line 113
    return-void
.end method
