.class Lcom/vkontakte/android/DialogsActivity$5;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/DialogsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/DialogsActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/DialogsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/DialogsActivity$5;->this$0:Lcom/vkontakte/android/DialogsActivity;

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 304
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity$5;->this$0:Lcom/vkontakte/android/DialogsActivity;

    const-class v2, Lcom/vkontakte/android/FriendsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 305
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "select"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 306
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity$5;->this$0:Lcom/vkontakte/android/DialogsActivity;

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Lcom/vkontakte/android/DialogsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 307
    return-void
.end method
