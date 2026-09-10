.class Lcom/vkontakte/android/ProfileView$3;
.super Ljava/lang/Object;
.source "ProfileView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/ProfileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ProfileView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ProfileView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ProfileView$3;->this$0:Lcom/vkontakte/android/ProfileView;

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 249
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 250
    .local v0, "act":Ljava/lang/String;
    const-string v3, "message"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 251
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 252
    .local v1, "args":Landroid/os/Bundle;
    const-string v3, "id"

    iget-object v4, p0, Lcom/vkontakte/android/ProfileView$3;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v4}, Lcom/vkontakte/android/ProfileView;->access$1(Lcom/vkontakte/android/ProfileView;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 253
    const-string v3, "title"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/vkontakte/android/ProfileView$3;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v5}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v5

    iget-object v5, v5, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v5, v5, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vkontakte/android/ProfileView$3;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v5}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v5

    iget-object v5, v5, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v5, v5, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 254
    const-string v3, "photo"

    iget-object v4, p0, Lcom/vkontakte/android/ProfileView$3;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v4}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v4

    iget-object v4, v4, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v4, v4, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 255
    const-string v4, "ChatFragment"

    iget-object v3, p0, Lcom/vkontakte/android/ProfileView$3;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-static {v4, v1, v3}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 275
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    const-string v3, "post"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 257
    iget-object v3, p0, Lcom/vkontakte/android/ProfileView$3;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v3}, Lcom/vkontakte/android/ProfileView;->access$4(Lcom/vkontakte/android/ProfileView;)V

    goto :goto_0

    .line 258
    :cond_2
    const-string v3, "add"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 259
    iget-object v3, p0, Lcom/vkontakte/android/ProfileView$3;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v3}, Lcom/vkontakte/android/ProfileView;->access$5(Lcom/vkontakte/android/ProfileView;)V

    goto :goto_0

    .line 260
    :cond_3
    const-string v3, "accept"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 261
    iget-object v3, p0, Lcom/vkontakte/android/ProfileView$3;->this$0:Lcom/vkontakte/android/ProfileView;

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/vkontakte/android/ProfileView;->access$6(Lcom/vkontakte/android/ProfileView;Ljava/lang/String;)V

    goto :goto_0

    .line 262
    :cond_4
    const-string v3, "cancel"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 263
    iget-object v3, p0, Lcom/vkontakte/android/ProfileView$3;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v3}, Lcom/vkontakte/android/ProfileView;->access$7(Lcom/vkontakte/android/ProfileView;)V

    goto :goto_0

    .line 264
    :cond_5
    const-string v3, "join"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 265
    iget-object v3, p0, Lcom/vkontakte/android/ProfileView$3;->this$0:Lcom/vkontakte/android/ProfileView;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/vkontakte/android/ProfileView;->access$8(Lcom/vkontakte/android/ProfileView;Z)V

    goto :goto_0

    .line 266
    :cond_6
    const-string v3, "join_unsure"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 267
    iget-object v3, p0, Lcom/vkontakte/android/ProfileView$3;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v3, v5}, Lcom/vkontakte/android/ProfileView;->access$8(Lcom/vkontakte/android/ProfileView;Z)V

    goto :goto_0

    .line 268
    :cond_7
    const-string v3, "leave"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 269
    iget-object v3, p0, Lcom/vkontakte/android/ProfileView$3;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v3}, Lcom/vkontakte/android/ProfileView;->access$9(Lcom/vkontakte/android/ProfileView;)V

    goto :goto_0

    .line 270
    :cond_8
    const-string v3, "photo"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 271
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/vkontakte/android/ProfileView$3;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/vkontakte/android/PostPhotoActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 272
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "option"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 273
    iget-object v3, p0, Lcom/vkontakte/android/ProfileView$3;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
