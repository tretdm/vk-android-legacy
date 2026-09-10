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

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 159
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$3;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->access$0(Lcom/vkontakte/android/NewPostActivity;Z)V

    .line 160
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$3;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->setResult(I)V

    .line 161
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$3;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewPostActivity;->finish()V

    .line 162
    return-void
.end method
