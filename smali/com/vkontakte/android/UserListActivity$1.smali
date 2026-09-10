.class Lcom/vkontakte/android/UserListActivity$1;
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
    iput-object p1, p0, Lcom/vkontakte/android/UserListActivity$1;->this$0:Lcom/vkontakte/android/UserListActivity;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 90
    iget-object v1, p0, Lcom/vkontakte/android/UserListActivity$1;->this$0:Lcom/vkontakte/android/UserListActivity;

    iget-object v0, p0, Lcom/vkontakte/android/UserListActivity$1;->this$0:Lcom/vkontakte/android/UserListActivity;

    invoke-static {v0}, Lcom/vkontakte/android/UserListActivity;->access$3(Lcom/vkontakte/android/UserListActivity;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f06005c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vkontakte/android/UserListActivity;->access$4(Lcom/vkontakte/android/UserListActivity;Ljava/lang/String;)V

    .line 91
    return-void
.end method
