.class Lcom/vkontakte/android/LoginActivity$3;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/LoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/LoginActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/LoginActivity;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/vkontakte/android/LoginActivity$3;->this$0:Lcom/vkontakte/android/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 51
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/LoginActivity$3;->this$0:Lcom/vkontakte/android/LoginActivity;

    const-class v2, Lcom/vkontakte/android/RestoreActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/vkontakte/android/LoginActivity$3;->this$0:Lcom/vkontakte/android/LoginActivity;

    const/16 v2, 0xcb

    invoke-virtual {v1, v0, v2}, Lcom/vkontakte/android/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 53
    return-void
.end method
