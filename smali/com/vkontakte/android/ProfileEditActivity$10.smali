.class Lcom/vkontakte/android/ProfileEditActivity$10;
.super Ljava/lang/Object;
.source "ProfileEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ProfileEditActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ProfileEditActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ProfileEditActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ProfileEditActivity$10;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 199
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 200
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "select"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 201
    const-string v2, "relation"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 202
    const-string v2, "no_online"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 203
    const-string v2, "my_gender"

    iget-object v3, p0, Lcom/vkontakte/android/ProfileEditActivity$10;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v3}, Lcom/vkontakte/android/ProfileEditActivity;->access$14(Lcom/vkontakte/android/ProfileEditActivity;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 204
    const-string v2, "show_same_gender"

    invoke-static {}, Lcom/vkontakte/android/ProfileEditActivity;->access$15()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/ProfileEditActivity$10;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v4}, Lcom/vkontakte/android/ProfileEditActivity;->access$16(Lcom/vkontakte/android/ProfileEditActivity;)Landroid/widget/Spinner;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 205
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vkontakte/android/ProfileEditActivity$10;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    const-class v3, Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 206
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "class"

    const-string v3, "FriendsFragment"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    const-string v2, "args"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 208
    iget-object v2, p0, Lcom/vkontakte/android/ProfileEditActivity$10;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    const/16 v3, 0x65

    invoke-virtual {v2, v1, v3}, Lcom/vkontakte/android/ProfileEditActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 209
    return-void
.end method
