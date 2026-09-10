.class Lcom/vkontakte/android/PollEditorActivity$7;
.super Ljava/lang/Object;
.source "PollEditorActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/PollsGetById$ExCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PollEditorActivity;->loadPoll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PollEditorActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PollEditorActivity;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/vkontakte/android/PollEditorActivity$7;->this$0:Lcom/vkontakte/android/PollEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canceled()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/vkontakte/android/PollEditorActivity$7;->this$0:Lcom/vkontakte/android/PollEditorActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/PollEditorActivity;->finish()V

    .line 197
    return-void
.end method

.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 190
    iget-object v1, p0, Lcom/vkontakte/android/PollEditorActivity$7;->this$0:Lcom/vkontakte/android/PollEditorActivity;

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const v0, 0x7f0d00ce

    :goto_0
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 191
    iget-object v0, p0, Lcom/vkontakte/android/PollEditorActivity$7;->this$0:Lcom/vkontakte/android/PollEditorActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/PollEditorActivity;->finish()V

    .line 192
    return-void

    .line 190
    :cond_0
    const v0, 0x7f0d00d0

    goto :goto_0
.end method

.method public success(Ljava/lang/String;I[Lcom/vkontakte/android/api/PollOption;Z)V
    .locals 6
    .param p1, "question"    # Ljava/lang/String;
    .param p2, "userAnswer"    # I
    .param p3, "options"    # [Lcom/vkontakte/android/api/PollOption;
    .param p4, "pub"    # Z

    .prologue
    .line 177
    iget-object v4, p0, Lcom/vkontakte/android/PollEditorActivity$7;->this$0:Lcom/vkontakte/android/PollEditorActivity;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v5}, Lcom/vkontakte/android/PollEditorActivity;->access$102(Lcom/vkontakte/android/PollEditorActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 178
    iget-object v4, p0, Lcom/vkontakte/android/PollEditorActivity$7;->this$0:Lcom/vkontakte/android/PollEditorActivity;

    invoke-static {v4}, Lcom/vkontakte/android/PollEditorActivity;->access$100(Lcom/vkontakte/android/PollEditorActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 179
    iget-object v4, p0, Lcom/vkontakte/android/PollEditorActivity$7;->this$0:Lcom/vkontakte/android/PollEditorActivity;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v5}, Lcom/vkontakte/android/PollEditorActivity;->access$802(Lcom/vkontakte/android/PollEditorActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 180
    iget-object v4, p0, Lcom/vkontakte/android/PollEditorActivity$7;->this$0:Lcom/vkontakte/android/PollEditorActivity;

    invoke-static {v4}, Lcom/vkontakte/android/PollEditorActivity;->access$800(Lcom/vkontakte/android/PollEditorActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 181
    move-object v0, p3

    .local v0, "arr$":[Lcom/vkontakte/android/api/PollOption;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 182
    .local v3, "opt":Lcom/vkontakte/android/api/PollOption;
    iget-object v4, p0, Lcom/vkontakte/android/PollEditorActivity$7;->this$0:Lcom/vkontakte/android/PollEditorActivity;

    iget-object v5, v3, Lcom/vkontakte/android/api/PollOption;->title:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/vkontakte/android/PollEditorActivity;->access$500(Lcom/vkontakte/android/PollEditorActivity;Ljava/lang/String;)V

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    .end local v3    # "opt":Lcom/vkontakte/android/api/PollOption;
    :cond_0
    iget-object v4, p0, Lcom/vkontakte/android/PollEditorActivity$7;->this$0:Lcom/vkontakte/android/PollEditorActivity;

    const v5, 0x7f080125

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/PollEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v4, p0, Lcom/vkontakte/android/PollEditorActivity$7;->this$0:Lcom/vkontakte/android/PollEditorActivity;

    invoke-static {v4}, Lcom/vkontakte/android/PollEditorActivity;->access$900(Lcom/vkontakte/android/PollEditorActivity;)V

    .line 186
    return-void
.end method
