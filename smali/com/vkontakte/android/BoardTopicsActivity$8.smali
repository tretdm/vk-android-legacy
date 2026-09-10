.class Lcom/vkontakte/android/BoardTopicsActivity$8;
.super Ljava/lang/Object;
.source "BoardTopicsActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/BoardFixTopic$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/BoardTopicsActivity;->toggleFixTopic(Lcom/vkontakte/android/api/BoardTopic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/BoardTopicsActivity;

.field private final synthetic val$isFixed:Z

.field private final synthetic val$topic:Lcom/vkontakte/android/api/BoardTopic;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/BoardTopicsActivity;ZLcom/vkontakte/android/api/BoardTopic;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/BoardTopicsActivity$8;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    iput-boolean p2, p0, Lcom/vkontakte/android/BoardTopicsActivity$8;->val$isFixed:Z

    iput-object p3, p0, Lcom/vkontakte/android/BoardTopicsActivity$8;->val$topic:Lcom/vkontakte/android/api/BoardTopic;

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 332
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicsActivity$8;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    const v1, 0x7f090052

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 333
    return-void
.end method

.method public success()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 303
    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicsActivity$8;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    iget-boolean v4, p0, Lcom/vkontakte/android/BoardTopicsActivity$8;->val$isFixed:Z

    if-eqz v4, :cond_1

    const v4, 0x7f09018b

    :goto_0
    invoke-static {v5, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 304
    iget-boolean v4, p0, Lcom/vkontakte/android/BoardTopicsActivity$8;->val$isFixed:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicsActivity$8;->val$topic:Lcom/vkontakte/android/api/BoardTopic;

    iget v5, v4, Lcom/vkontakte/android/api/BoardTopic;->flags:I

    and-int/lit8 v5, v5, -0x3

    iput v5, v4, Lcom/vkontakte/android/api/BoardTopic;->flags:I

    .line 307
    :goto_1
    iget-boolean v4, p0, Lcom/vkontakte/android/BoardTopicsActivity$8;->val$isFixed:Z

    if-eqz v4, :cond_a

    .line 308
    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicsActivity$8;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    iget-object v4, v4, Lcom/vkontakte/android/BoardTopicsActivity;->topics:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicsActivity$8;->val$topic:Lcom/vkontakte/android/api/BoardTopic;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 309
    const/4 v0, 0x0

    .line 310
    .local v0, "added":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicsActivity$8;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    iget-object v4, v4, Lcom/vkontakte/android/BoardTopicsActivity;->topics:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt v1, v4, :cond_3

    .line 321
    if-nez v0, :cond_0

    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicsActivity$8;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    iget-object v4, v4, Lcom/vkontakte/android/BoardTopicsActivity;->topics:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicsActivity$8;->val$topic:Lcom/vkontakte/android/api/BoardTopic;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    .end local v0    # "added":Z
    .end local v1    # "i":I
    :cond_0
    :goto_3
    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicsActivity$8;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    invoke-virtual {v4}, Lcom/vkontakte/android/BoardTopicsActivity;->updateList()V

    .line 328
    return-void

    .line 303
    :cond_1
    const v4, 0x7f09018a

    goto :goto_0

    .line 305
    :cond_2
    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicsActivity$8;->val$topic:Lcom/vkontakte/android/api/BoardTopic;

    iget v5, v4, Lcom/vkontakte/android/api/BoardTopic;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Lcom/vkontakte/android/api/BoardTopic;->flags:I

    goto :goto_1

    .line 311
    .restart local v0    # "added":Z
    .restart local v1    # "i":I
    :cond_3
    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicsActivity$8;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    iget-object v4, v4, Lcom/vkontakte/android/BoardTopicsActivity;->topics:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/api/BoardTopic;

    .local v2, "t1":Lcom/vkontakte/android/api/BoardTopic;
    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicsActivity$8;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    iget-object v4, v4, Lcom/vkontakte/android/BoardTopicsActivity;->topics:Ljava/util/ArrayList;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/api/BoardTopic;

    .line 312
    .local v3, "t2":Lcom/vkontakte/android/api/BoardTopic;
    iget v4, v2, Lcom/vkontakte/android/api/BoardTopic;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-lez v4, :cond_5

    .line 310
    :cond_4
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 313
    :cond_5
    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicsActivity$8;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    invoke-static {v4}, Lcom/vkontakte/android/BoardTopicsActivity;->access$7(Lcom/vkontakte/android/BoardTopicsActivity;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicsActivity$8;->val$topic:Lcom/vkontakte/android/api/BoardTopic;

    iget v4, v4, Lcom/vkontakte/android/api/BoardTopic;->updated:I

    iget v5, v2, Lcom/vkontakte/android/api/BoardTopic;->updated:I

    if-ge v4, v5, :cond_6

    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicsActivity$8;->val$topic:Lcom/vkontakte/android/api/BoardTopic;

    iget v4, v4, Lcom/vkontakte/android/api/BoardTopic;->updated:I

    iget v5, v3, Lcom/vkontakte/android/api/BoardTopic;->updated:I

    if-ge v4, v5, :cond_9

    .line 314
    :cond_6
    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicsActivity$8;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    invoke-static {v4}, Lcom/vkontakte/android/BoardTopicsActivity;->access$7(Lcom/vkontakte/android/BoardTopicsActivity;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_7

    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicsActivity$8;->val$topic:Lcom/vkontakte/android/api/BoardTopic;

    iget v4, v4, Lcom/vkontakte/android/api/BoardTopic;->updated:I

    iget v5, v3, Lcom/vkontakte/android/api/BoardTopic;->updated:I

    if-ge v4, v5, :cond_7

    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicsActivity$8;->val$topic:Lcom/vkontakte/android/api/BoardTopic;

    iget v4, v4, Lcom/vkontakte/android/api/BoardTopic;->updated:I

    iget v5, v2, Lcom/vkontakte/android/api/BoardTopic;->updated:I

    if-ge v4, v5, :cond_9

    .line 315
    :cond_7
    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicsActivity$8;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    invoke-static {v4}, Lcom/vkontakte/android/BoardTopicsActivity;->access$7(Lcom/vkontakte/android/BoardTopicsActivity;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_8

    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicsActivity$8;->val$topic:Lcom/vkontakte/android/api/BoardTopic;

    iget v4, v4, Lcom/vkontakte/android/api/BoardTopic;->created:I

    iget v5, v2, Lcom/vkontakte/android/api/BoardTopic;->created:I

    if-ge v4, v5, :cond_8

    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicsActivity$8;->val$topic:Lcom/vkontakte/android/api/BoardTopic;

    iget v4, v4, Lcom/vkontakte/android/api/BoardTopic;->created:I

    iget v5, v3, Lcom/vkontakte/android/api/BoardTopic;->created:I

    if-ge v4, v5, :cond_9

    .line 316
    :cond_8
    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicsActivity$8;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    invoke-static {v4}, Lcom/vkontakte/android/BoardTopicsActivity;->access$7(Lcom/vkontakte/android/BoardTopicsActivity;)I

    move-result v4

    const/4 v5, -0x2

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicsActivity$8;->val$topic:Lcom/vkontakte/android/api/BoardTopic;

    iget v4, v4, Lcom/vkontakte/android/api/BoardTopic;->created:I

    iget v5, v3, Lcom/vkontakte/android/api/BoardTopic;->created:I

    if-ge v4, v5, :cond_4

    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicsActivity$8;->val$topic:Lcom/vkontakte/android/api/BoardTopic;

    iget v4, v4, Lcom/vkontakte/android/api/BoardTopic;->created:I

    iget v5, v2, Lcom/vkontakte/android/api/BoardTopic;->created:I

    if-lt v4, v5, :cond_4

    .line 317
    :cond_9
    const/4 v0, 0x1

    .line 318
    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicsActivity$8;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    iget-object v4, v4, Lcom/vkontakte/android/BoardTopicsActivity;->topics:Ljava/util/ArrayList;

    add-int/lit8 v5, v1, 0x1

    iget-object v6, p0, Lcom/vkontakte/android/BoardTopicsActivity$8;->val$topic:Lcom/vkontakte/android/api/BoardTopic;

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_4

    .line 323
    .end local v0    # "added":Z
    .end local v1    # "i":I
    .end local v2    # "t1":Lcom/vkontakte/android/api/BoardTopic;
    .end local v3    # "t2":Lcom/vkontakte/android/api/BoardTopic;
    :cond_a
    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicsActivity$8;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    iget-object v4, v4, Lcom/vkontakte/android/BoardTopicsActivity;->topics:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicsActivity$8;->val$topic:Lcom/vkontakte/android/api/BoardTopic;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 324
    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicsActivity$8;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    iget-object v4, v4, Lcom/vkontakte/android/BoardTopicsActivity;->topics:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicsActivity$8;->val$topic:Lcom/vkontakte/android/api/BoardTopic;

    invoke-virtual {v4, v6, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_3
.end method
