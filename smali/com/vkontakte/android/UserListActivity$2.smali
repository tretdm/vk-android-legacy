.class Lcom/vkontakte/android/UserListActivity$2;
.super Ljava/lang/Object;
.source "UserListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/UserListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/UserListActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/UserListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/UserListActivity$2;->this$0:Lcom/vkontakte/android/UserListActivity;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 106
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/UserListActivity$2;->this$0:Lcom/vkontakte/android/UserListActivity;

    const-class v2, Lcom/vkontakte/android/FriendsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "select"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 108
    iget-object v1, p0, Lcom/vkontakte/android/UserListActivity$2;->this$0:Lcom/vkontakte/android/UserListActivity;

    const v2, 0x69afa

    invoke-virtual {v1, v0, v2}, Lcom/vkontakte/android/UserListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 109
    return-void
.end method
