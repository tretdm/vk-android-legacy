.class Lcom/vkontakte/android/PollAttachView$5;
.super Ljava/lang/Object;
.source "PollAttachView.java"

# interfaces
.implements Lcom/vkontakte/android/api/PollsDeleteVote$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PollAttachView;->unvote()V
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
    .line 327
    iput-object p1, p0, Lcom/vkontakte/android/PollAttachView$5;->this$0:Lcom/vkontakte/android/PollAttachView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 342
    iget-object v0, p0, Lcom/vkontakte/android/PollAttachView$5;->this$0:Lcom/vkontakte/android/PollAttachView;

    invoke-virtual {v0}, Lcom/vkontakte/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d00d0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 343
    return-void
.end method

.method public success(Z)V
    .locals 9
    .param p1, "voted"    # Z

    .prologue
    .line 330
    const/4 v5, 0x0

    .line 331
    .local v5, "totalVotes":I
    iget-object v6, p0, Lcom/vkontakte/android/PollAttachView$5;->this$0:Lcom/vkontakte/android/PollAttachView;

    invoke-static {v6}, Lcom/vkontakte/android/PollAttachView;->access$600(Lcom/vkontakte/android/PollAttachView;)[Lcom/vkontakte/android/api/PollOption;

    move-result-object v0

    .local v0, "arr$":[Lcom/vkontakte/android/api/PollOption;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .local v4, "opt":Lcom/vkontakte/android/api/PollOption;
    iget v6, v4, Lcom/vkontakte/android/api/PollOption;->numVotes:I

    add-int/2addr v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 332
    .end local v4    # "opt":Lcom/vkontakte/android/api/PollOption;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v6, p0, Lcom/vkontakte/android/PollAttachView$5;->this$0:Lcom/vkontakte/android/PollAttachView;

    invoke-static {v6}, Lcom/vkontakte/android/PollAttachView;->access$600(Lcom/vkontakte/android/PollAttachView;)[Lcom/vkontakte/android/api/PollOption;

    move-result-object v6

    array-length v6, v6

    if-ge v1, v6, :cond_2

    .line 333
    iget-object v6, p0, Lcom/vkontakte/android/PollAttachView$5;->this$0:Lcom/vkontakte/android/PollAttachView;

    invoke-static {v6}, Lcom/vkontakte/android/PollAttachView;->access$600(Lcom/vkontakte/android/PollAttachView;)[Lcom/vkontakte/android/api/PollOption;

    move-result-object v6

    aget-object v6, v6, v1

    iget v6, v6, Lcom/vkontakte/android/api/PollOption;->id:I

    iget-object v7, p0, Lcom/vkontakte/android/PollAttachView$5;->this$0:Lcom/vkontakte/android/PollAttachView;

    invoke-static {v7}, Lcom/vkontakte/android/PollAttachView;->access$100(Lcom/vkontakte/android/PollAttachView;)I

    move-result v7

    if-ne v6, v7, :cond_1

    iget-object v6, p0, Lcom/vkontakte/android/PollAttachView$5;->this$0:Lcom/vkontakte/android/PollAttachView;

    invoke-static {v6}, Lcom/vkontakte/android/PollAttachView;->access$600(Lcom/vkontakte/android/PollAttachView;)[Lcom/vkontakte/android/api/PollOption;

    move-result-object v6

    aget-object v6, v6, v1

    iget v7, v6, Lcom/vkontakte/android/api/PollOption;->numVotes:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lcom/vkontakte/android/api/PollOption;->numVotes:I

    .line 334
    :cond_1
    iget-object v6, p0, Lcom/vkontakte/android/PollAttachView$5;->this$0:Lcom/vkontakte/android/PollAttachView;

    invoke-static {v6}, Lcom/vkontakte/android/PollAttachView;->access$600(Lcom/vkontakte/android/PollAttachView;)[Lcom/vkontakte/android/api/PollOption;

    move-result-object v6

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/vkontakte/android/PollAttachView$5;->this$0:Lcom/vkontakte/android/PollAttachView;

    invoke-static {v7}, Lcom/vkontakte/android/PollAttachView;->access$600(Lcom/vkontakte/android/PollAttachView;)[Lcom/vkontakte/android/api/PollOption;

    move-result-object v7

    aget-object v7, v7, v1

    iget v7, v7, Lcom/vkontakte/android/api/PollOption;->numVotes:I

    int-to-float v7, v7

    int-to-float v8, v5

    div-float/2addr v7, v8

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float/2addr v7, v8

    iput v7, v6, Lcom/vkontakte/android/api/PollOption;->percent:F

    .line 332
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 336
    :cond_2
    iget-object v6, p0, Lcom/vkontakte/android/PollAttachView$5;->this$0:Lcom/vkontakte/android/PollAttachView;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/vkontakte/android/PollAttachView;->access$102(Lcom/vkontakte/android/PollAttachView;I)I

    .line 337
    iget-object v6, p0, Lcom/vkontakte/android/PollAttachView$5;->this$0:Lcom/vkontakte/android/PollAttachView;

    invoke-static {v6}, Lcom/vkontakte/android/PollAttachView;->access$700(Lcom/vkontakte/android/PollAttachView;)V

    .line 338
    iget-object v6, p0, Lcom/vkontakte/android/PollAttachView$5;->this$0:Lcom/vkontakte/android/PollAttachView;

    invoke-static {v6}, Lcom/vkontakte/android/PollAttachView;->access$800(Lcom/vkontakte/android/PollAttachView;)V

    .line 339
    return-void
.end method
