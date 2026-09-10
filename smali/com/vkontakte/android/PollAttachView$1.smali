.class Lcom/vkontakte/android/PollAttachView$1;
.super Ljava/lang/Object;
.source "PollAttachView.java"

# interfaces
.implements Lcom/vkontakte/android/api/PollsGetById$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PollAttachView;->loadData()V
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
    .line 60
    iput-object p1, p0, Lcom/vkontakte/android/PollAttachView$1;->this$0:Lcom/vkontakte/android/PollAttachView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 1
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vkontakte/android/PollAttachView$1;->this$0:Lcom/vkontakte/android/PollAttachView;

    invoke-static {v0, p2}, Lcom/vkontakte/android/PollAttachView;->access$000(Lcom/vkontakte/android/PollAttachView;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public success(Ljava/lang/String;I[Lcom/vkontakte/android/api/PollOption;Z)V
    .locals 1
    .param p1, "question"    # Ljava/lang/String;
    .param p2, "userAnswer"    # I
    .param p3, "options"    # [Lcom/vkontakte/android/api/PollOption;
    .param p4, "pub"    # Z

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vkontakte/android/PollAttachView$1;->this$0:Lcom/vkontakte/android/PollAttachView;

    iput-boolean p4, v0, Lcom/vkontakte/android/PollAttachView;->isPublic:Z

    .line 64
    iget-object v0, p0, Lcom/vkontakte/android/PollAttachView$1;->this$0:Lcom/vkontakte/android/PollAttachView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/vkontakte/android/PollAttachView;->onLoaded(Ljava/lang/String;I[Lcom/vkontakte/android/api/PollOption;Z)V

    .line 65
    return-void
.end method
