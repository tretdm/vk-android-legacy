.class Lcom/vkontakte/android/TabletMainActivity$2;
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
    iput-object p1, p0, Lcom/vkontakte/android/TabletMainActivity$2;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommunitySelected(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 211
    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$2;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    invoke-static {v1}, Lcom/vkontakte/android/TabletMainActivity;->access$1(Lcom/vkontakte/android/TabletMainActivity;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$2;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    invoke-static {v1}, Lcom/vkontakte/android/TabletMainActivity;->access$1(Lcom/vkontakte/android/TabletMainActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 212
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$2;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    const-class v2, Lcom/vkontakte/android/WallActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 213
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "wall_id"

    neg-int v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 214
    const-string v1, "force_tabs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 215
    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$2;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    const-string v2, "tmp"

    invoke-virtual {v1, v2, v0}, Lcom/vkontakte/android/TabletMainActivity;->showActivity(Ljava/lang/String;Landroid/content/Intent;)V

    .line 216
    const-string v1, "left_group"

    invoke-static {v1}, Lcom/vkontakte/android/Global;->logStats(Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public onMenuItemSelected(I)V
    .locals 4
    .param p1, "item"    # I

    .prologue
    .line 146
    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$2;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    invoke-static {v1}, Lcom/vkontakte/android/TabletMainActivity;->access$1(Lcom/vkontakte/android/TabletMainActivity;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$2;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    invoke-static {v1}, Lcom/vkontakte/android/TabletMainActivity;->access$1(Lcom/vkontakte/android/TabletMainActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 147
    :cond_0
    if-ltz p1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "left_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/Global;->logStats(Ljava/lang/String;)V

    .line 149
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 207
    :goto_0
    return-void

    .line 151
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$2;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    const-class v2, Lcom/vkontakte/android/WallActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "wall_id"

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 153
    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$2;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    const-string v2, "mypage"

    invoke-virtual {v1, v2, v0}, Lcom/vkontakte/android/TabletMainActivity;->showActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 156
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$2;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    const-class v2, Lcom/vkontakte/android/FriendsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$2;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    const-string v2, "friends"

    invoke-virtual {v1, v2, v0}, Lcom/vkontakte/android/TabletMainActivity;->showActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 160
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$2;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    const-class v2, Lcom/vkontakte/android/PhotoAlbumListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "uid"

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    const-string v1, "title"

    iget-object v2, p0, Lcom/vkontakte/android/TabletMainActivity$2;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/TabletMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$2;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    const-string v2, "photos"

    invoke-virtual {v1, v2, v0}, Lcom/vkontakte/android/TabletMainActivity;->showActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 166
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$2;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    const-class v2, Lcom/vkontakte/android/VideoListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 167
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "uid"

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 168
    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$2;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    const-string v2, "videos"

    invoke-virtual {v1, v2, v0}, Lcom/vkontakte/android/TabletMainActivity;->showActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 171
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$2;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    const-class v2, Lcom/vkontakte/android/AudioListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$2;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    const-string v2, "audio"

    invoke-virtual {v1, v2, v0}, Lcom/vkontakte/android/TabletMainActivity;->showActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 175
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_5
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$2;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    const-class v2, Lcom/vkontakte/android/DialogsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$2;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    const-string v2, "messages"

    invoke-virtual {v1, v2, v0}, Lcom/vkontakte/android/TabletMainActivity;->showActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 179
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_6
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$2;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    const-class v2, Lcom/vkontakte/android/GroupsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 180
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "uid"

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 181
    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$2;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    const-string v2, "groups"

    invoke-virtual {v1, v2, v0}, Lcom/vkontakte/android/TabletMainActivity;->showActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 184
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_7
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$2;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    const-class v2, Lcom/vkontakte/android/NewsfeedActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$2;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    const-string v2, "news"

    invoke-virtual {v1, v2, v0}, Lcom/vkontakte/android/TabletMainActivity;->showActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 188
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_8
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$2;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    const-class v2, Lcom/vkontakte/android/FaveActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 191
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$2;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    const-string v2, "fave"

    invoke-virtual {v1, v2, v0}, Lcom/vkontakte/android/TabletMainActivity;->showActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 195
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_9
    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$2;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/TabletMainActivity;->showSettings()V

    goto/16 :goto_0

    .line 198
    :sswitch_a
    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$2;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    invoke-static {v1}, Lcom/vkontakte/android/MainActivity;->showAbout(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 201
    :sswitch_b
    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$2;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/TabletMainActivity;->exitApp()V

    goto/16 :goto_0

    .line 204
    :sswitch_c
    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$2;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    sget-object v2, Lcom/vkontakte/android/MenuListView;->reminderIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/TabletMainActivity;->startActivityInFragment(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 149
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
    .line 136
    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$2;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    invoke-static {v1}, Lcom/vkontakte/android/TabletMainActivity;->access$1(Lcom/vkontakte/android/TabletMainActivity;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$2;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    invoke-static {v1}, Lcom/vkontakte/android/TabletMainActivity;->access$1(Lcom/vkontakte/android/TabletMainActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 137
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$2;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    const-class v2, Lcom/vkontakte/android/WallActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "wall_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 139
    const-string v1, "force_tabs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$2;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    const-string v2, "tmp"

    invoke-virtual {v1, v2, v0}, Lcom/vkontakte/android/TabletMainActivity;->showActivity(Ljava/lang/String;Landroid/content/Intent;)V

    .line 141
    const-string v1, "left_friend"

    invoke-static {v1}, Lcom/vkontakte/android/Global;->logStats(Ljava/lang/String;)V

    .line 142
    return-void
.end method
