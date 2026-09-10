.class Lcom/vkontakte/android/PostViewActivity$4;
.super Ljava/lang/Object;
.source "PostViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PostViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PostViewActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PostViewActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PostViewActivity$4;->this$0:Lcom/vkontakte/android/PostViewActivity;

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$4;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$9(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/LoadMoreCommentsView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/LoadMoreCommentsView;->showProgress(Z)V

    .line 241
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$4;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/PostViewActivity;->updateList()V

    .line 242
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$4;->this$0:Lcom/vkontakte/android/PostViewActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/PostViewActivity;->access$10(Lcom/vkontakte/android/PostViewActivity;Z)V

    .line 243
    return-void
.end method
