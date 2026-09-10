.class Lcom/vkontakte/android/BoardTopicsActivity$7;
.super Ljava/lang/Object;
.source "BoardTopicsActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/BoardCloseTopic$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/BoardTopicsActivity;->toggleCloseTopic(Lcom/vkontakte/android/api/BoardTopic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/BoardTopicsActivity;

.field private final synthetic val$isClosed:Z

.field private final synthetic val$topic:Lcom/vkontakte/android/api/BoardTopic;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/BoardTopicsActivity;ZLcom/vkontakte/android/api/BoardTopic;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/BoardTopicsActivity$7;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    iput-boolean p2, p0, Lcom/vkontakte/android/BoardTopicsActivity$7;->val$isClosed:Z

    iput-object p3, p0, Lcom/vkontakte/android/BoardTopicsActivity$7;->val$topic:Lcom/vkontakte/android/api/BoardTopic;

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicsActivity$7;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    const v1, 0x7f090052

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 291
    return-void
.end method

.method public success()V
    .locals 3

    .prologue
    .line 282
    iget-object v1, p0, Lcom/vkontakte/android/BoardTopicsActivity$7;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    iget-boolean v0, p0, Lcom/vkontakte/android/BoardTopicsActivity$7;->val$isClosed:Z

    if-eqz v0, :cond_0

    const v0, 0x7f09018c

    :goto_0
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 283
    iget-boolean v0, p0, Lcom/vkontakte/android/BoardTopicsActivity$7;->val$isClosed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicsActivity$7;->val$topic:Lcom/vkontakte/android/api/BoardTopic;

    iget v1, v0, Lcom/vkontakte/android/api/BoardTopic;->flags:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Lcom/vkontakte/android/api/BoardTopic;->flags:I

    .line 285
    :goto_1
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicsActivity$7;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/BoardTopicsActivity;->updateList()V

    .line 286
    return-void

    .line 282
    :cond_0
    const v0, 0x7f09018d

    goto :goto_0

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicsActivity$7;->val$topic:Lcom/vkontakte/android/api/BoardTopic;

    iget v1, v0, Lcom/vkontakte/android/api/BoardTopic;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/vkontakte/android/api/BoardTopic;->flags:I

    goto :goto_1
.end method
