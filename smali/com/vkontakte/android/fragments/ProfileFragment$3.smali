.class Lcom/vkontakte/android/fragments/ProfileFragment$3;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ProfileFragment;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ProfileFragment$3;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 276
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 277
    .local v0, "act":Ljava/lang/String;
    const-string v3, "message"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 278
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 279
    .local v1, "args":Landroid/os/Bundle;
    const-string v3, "id"

    iget-object v4, p0, Lcom/vkontakte/android/fragments/ProfileFragment$3;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$100(Lcom/vkontakte/android/fragments/ProfileFragment;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 280
    const-string v3, "title"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/vkontakte/android/fragments/ProfileFragment$3;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$000(Lcom/vkontakte/android/fragments/ProfileFragment;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v5

    iget-object v5, v5, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v5, v5, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vkontakte/android/fragments/ProfileFragment$3;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$000(Lcom/vkontakte/android/fragments/ProfileFragment;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v5

    iget-object v5, v5, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v5, v5, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 281
    const-string v3, "photo"

    iget-object v4, p0, Lcom/vkontakte/android/fragments/ProfileFragment$3;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$000(Lcom/vkontakte/android/fragments/ProfileFragment;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v4

    iget-object v4, v4, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v4, v4, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 282
    const-string v3, "ChatFragment"

    iget-object v4, p0, Lcom/vkontakte/android/fragments/ProfileFragment$3;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 302
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    const-string v3, "post"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 284
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ProfileFragment$3;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$400(Lcom/vkontakte/android/fragments/ProfileFragment;)V

    goto :goto_0

    .line 285
    :cond_2
    const-string v3, "add"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 286
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ProfileFragment$3;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$500(Lcom/vkontakte/android/fragments/ProfileFragment;)V

    goto :goto_0

    .line 287
    :cond_3
    const-string v3, "accept"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 288
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ProfileFragment$3;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$600(Lcom/vkontakte/android/fragments/ProfileFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 289
    :cond_4
    const-string v3, "cancel"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 290
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ProfileFragment$3;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$700(Lcom/vkontakte/android/fragments/ProfileFragment;)V

    goto :goto_0

    .line 291
    :cond_5
    const-string v3, "join"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 292
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ProfileFragment$3;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$800(Lcom/vkontakte/android/fragments/ProfileFragment;Z)V

    goto :goto_0

    .line 293
    :cond_6
    const-string v3, "join_unsure"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 294
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ProfileFragment$3;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v3, v5}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$800(Lcom/vkontakte/android/fragments/ProfileFragment;Z)V

    goto :goto_0

    .line 295
    :cond_7
    const-string v3, "leave"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 296
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ProfileFragment$3;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$900(Lcom/vkontakte/android/fragments/ProfileFragment;)V

    goto :goto_0

    .line 297
    :cond_8
    const-string v3, "photo"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 298
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/vkontakte/android/fragments/ProfileFragment$3;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/vkontakte/android/PostPhotoActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 299
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "option"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 300
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ProfileFragment$3;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-virtual {v3, v2}, Lcom/vkontakte/android/fragments/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
