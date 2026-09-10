.class Lcom/vkontakte/android/PollAttachView$3;
.super Ljava/lang/Object;
.source "PollAttachView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PollAttachView;->onLoaded(Ljava/lang/String;I[Lcom/vkontakte/android/api/PollOption;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PollAttachView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PollAttachView;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/vkontakte/android/PollAttachView$3;->this$0:Lcom/vkontakte/android/PollAttachView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/vkontakte/android/PollAttachView$3;->this$0:Lcom/vkontakte/android/PollAttachView;

    invoke-static {v0}, Lcom/vkontakte/android/PollAttachView;->access$100(Lcom/vkontakte/android/PollAttachView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/vkontakte/android/PollAttachView$3;->this$0:Lcom/vkontakte/android/PollAttachView;

    invoke-static {v0}, Lcom/vkontakte/android/PollAttachView;->access$500(Lcom/vkontakte/android/PollAttachView;)V

    .line 235
    const/4 v0, 0x1

    .line 237
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
