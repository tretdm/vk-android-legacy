.class Lcom/vkontakte/android/NewPostActivity$4$1;
.super Ljava/lang/Object;
.source "NewPostActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewPostActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/NewPostActivity$4;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewPostActivity$4;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/vkontakte/android/NewPostActivity$4$1;->this$1:Lcom/vkontakte/android/NewPostActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 185
    if-nez p2, :cond_0

    .line 186
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$4$1;->this$1:Lcom/vkontakte/android/NewPostActivity$4;

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity$4;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewPostActivity;->startLocationChooser()V

    .line 188
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$4$1;->this$1:Lcom/vkontakte/android/NewPostActivity$4;

    iget-object v0, v0, Lcom/vkontakte/android/NewPostActivity$4;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewPostActivity;->access$500(Lcom/vkontakte/android/NewPostActivity;)V

    .line 191
    :cond_1
    return-void
.end method
