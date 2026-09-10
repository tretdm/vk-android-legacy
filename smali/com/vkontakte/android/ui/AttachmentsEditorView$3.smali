.class Lcom/vkontakte/android/ui/AttachmentsEditorView$3;
.super Landroid/content/BroadcastReceiver;
.source "AttachmentsEditorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/ui/AttachmentsEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/AttachmentsEditorView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    .line 88
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v10, 0x8

    const v9, 0x7f080051

    const/4 v8, 0x0

    .line 91
    const-string v5, "com.vkontakte.android.UPLOAD_PROGRESS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 92
    const-string v5, "id"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 93
    .local v2, "id":I
    const/4 v1, 0x0

    .line 94
    .local v1, "i":I
    iget-object v5, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-static {v5}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->access$1(Lcom/vkontakte/android/ui/AttachmentsEditorView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 105
    .end local v1    # "i":I
    .end local v2    # "id":I
    :cond_0
    :goto_1
    const-string v5, "com.vkontakte.android.UPLOAD_DONE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 106
    const-string v5, "id"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 107
    .restart local v2    # "id":I
    const/4 v1, 0x0

    .line 108
    .restart local v1    # "i":I
    iget-object v5, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-static {v5}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->access$1(Lcom/vkontakte/android/ui/AttachmentsEditorView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_5

    .line 120
    :goto_3
    iget-object v5, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v5}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->isUploading()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-static {v5}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->access$3(Lcom/vkontakte/android/ui/AttachmentsEditorView;)Lcom/vkontakte/android/ui/AttachmentsEditorView$Callback;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-static {v5}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->access$3(Lcom/vkontakte/android/ui/AttachmentsEditorView;)Lcom/vkontakte/android/ui/AttachmentsEditorView$Callback;

    move-result-object v5

    invoke-interface {v5}, Lcom/vkontakte/android/ui/AttachmentsEditorView$Callback;->onAllUploadsDone()V

    .line 122
    .end local v1    # "i":I
    .end local v2    # "id":I
    :cond_1
    const-string v5, "com.vkontakte.android.UPLOAD_FAILED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 123
    const-string v5, "id"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 124
    .restart local v2    # "id":I
    const/4 v1, 0x0

    .line 125
    .restart local v1    # "i":I
    iget-object v5, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-static {v5}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->access$1(Lcom/vkontakte/android/ui/AttachmentsEditorView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_7

    .line 136
    .end local v1    # "i":I
    .end local v2    # "id":I
    :cond_2
    :goto_5
    return-void

    .line 94
    .restart local v1    # "i":I
    .restart local v2    # "id":I
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 95
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v6, v0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    if-eqz v6, :cond_4

    check-cast v0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    iget v6, v0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->id:I

    if-ne v6, v2, :cond_4

    .line 96
    iget-object v5, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-static {v5}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->access$2(Lcom/vkontakte/android/ui/AttachmentsEditorView;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 97
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    const-string v6, "done"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 98
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    const-string v6, "total"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setMax(I)V

    goto/16 :goto_1

    .line 102
    .end local v4    # "v":Landroid/view/View;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 108
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 109
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v6, v0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    if-eqz v6, :cond_6

    check-cast v0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    iget v6, v0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->id:I

    if-ne v6, v2, :cond_6

    .line 110
    iget-object v5, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-static {v5}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->access$2(Lcom/vkontakte/android/ui/AttachmentsEditorView;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 111
    .restart local v4    # "v":Landroid/view/View;
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 112
    const-string v5, "attachment"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/Attachment;

    .line 113
    .local v3, "na":Lcom/vkontakte/android/Attachment;
    invoke-virtual {v4, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 114
    iget-object v5, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-static {v5}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->access$1(Lcom/vkontakte/android/ui/AttachmentsEditorView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v5, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Upload "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " done: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "attachment"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 118
    .end local v3    # "na":Lcom/vkontakte/android/Attachment;
    .end local v4    # "v":Landroid/view/View;
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 125
    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 126
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v6, v0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    if-eqz v6, :cond_9

    check-cast v0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    iget v6, v0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->id:I

    if-ne v6, v2, :cond_9

    .line 127
    iget-object v5, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-static {v5}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->access$3(Lcom/vkontakte/android/ui/AttachmentsEditorView;)Lcom/vkontakte/android/ui/AttachmentsEditorView$Callback;

    move-result-object v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-static {v5}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->access$3(Lcom/vkontakte/android/ui/AttachmentsEditorView;)Lcom/vkontakte/android/ui/AttachmentsEditorView$Callback;

    move-result-object v5

    invoke-interface {v5}, Lcom/vkontakte/android/ui/AttachmentsEditorView$Callback;->onUploadFailed()V

    .line 128
    :cond_8
    iget-object v5, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-static {v5}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->access$2(Lcom/vkontakte/android/ui/AttachmentsEditorView;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 129
    .restart local v4    # "v":Landroid/view/View;
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 130
    const v5, 0x7f080052

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 133
    .end local v4    # "v":Landroid/view/View;
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4
.end method
