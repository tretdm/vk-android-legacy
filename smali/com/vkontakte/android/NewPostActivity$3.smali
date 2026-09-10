.class Lcom/vkontakte/android/NewPostActivity$3;
.super Ljava/lang/Object;
.source "NewPostActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewPostActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewPostActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewPostActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewPostActivity$3;->this$0:Lcom/vkontakte/android/NewPostActivity;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 150
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity$3;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewPostActivity;->access$1(Lcom/vkontakte/android/NewPostActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity$3;->this$0:Lcom/vkontakte/android/NewPostActivity;

    const-class v2, Lcom/vkontakte/android/ImagePickerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity$3;->this$0:Lcom/vkontakte/android/NewPostActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/vkontakte/android/NewPostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
