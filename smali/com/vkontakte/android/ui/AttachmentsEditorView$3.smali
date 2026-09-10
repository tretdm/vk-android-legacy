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
    .line 119
    iput-object p1, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x0

    const v10, 0x7f080042

    .line 122
    sget-boolean v6, Lcom/vkontakte/android/APIController;->API_DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "vk"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "upload state "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "id"

    const/4 v9, -0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_0
    const-string v6, "com.vkontakte.android.UPLOAD_PROGRESS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 124
    const-string v6, "id"

    invoke-virtual {p2, v6, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 125
    .local v3, "id":I
    const/4 v1, 0x0

    .line 126
    .local v1, "i":I
    iget-object v6, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-static {v6}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->access$300(Lcom/vkontakte/android/ui/AttachmentsEditorView;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 127
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v6, v0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    if-eqz v6, :cond_2

    move-object v6, v0

    check-cast v6, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    iget v6, v6, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->id:I

    if-eq v6, v3, :cond_4

    :cond_2
    instance-of v6, v0, Lcom/vkontakte/android/PendingDocumentAttachment;

    if-eqz v6, :cond_3

    move-object v6, v0

    check-cast v6, Lcom/vkontakte/android/PendingDocumentAttachment;

    iget v6, v6, Lcom/vkontakte/android/PendingDocumentAttachment;->did:I

    if-eq v6, v3, :cond_4

    :cond_3
    instance-of v6, v0, Lcom/vkontakte/android/PendingVideoAttachment;

    if-eqz v6, :cond_a

    move-object v6, v0

    check-cast v6, Lcom/vkontakte/android/PendingVideoAttachment;

    iget v6, v6, Lcom/vkontakte/android/PendingVideoAttachment;->vid:I

    if-ne v6, v3, :cond_a

    .line 128
    :cond_4
    iget-object v6, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v6, v0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v5

    .line 129
    .local v5, "v":Landroid/view/View;
    if-nez v5, :cond_5

    iget-object v6, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-static {v6}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->access$400(Lcom/vkontakte/android/ui/AttachmentsEditorView;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 131
    :cond_5
    if-nez v5, :cond_6

    .line 132
    add-int/lit8 v1, v1, 0x1

    .line 133
    goto :goto_0

    .line 135
    :cond_6
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 136
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    const-string v7, "done"

    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 137
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    const-string v7, "total"

    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 138
    sget-boolean v6, Lcom/vkontakte/android/APIController;->API_DEBUG:Z

    if-eqz v6, :cond_7

    const-string v6, "vk"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Upload "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " progress: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "done"

    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "total"

    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "id":I
    .end local v5    # "v":Landroid/view/View;
    :cond_7
    const-string v6, "com.vkontakte.android.UPLOAD_DONE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 145
    const-string v6, "id"

    invoke-virtual {p2, v6, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 146
    .restart local v3    # "id":I
    const/4 v1, 0x0

    .line 147
    .restart local v1    # "i":I
    iget-object v6, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-static {v6}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->access$300(Lcom/vkontakte/android/ui/AttachmentsEditorView;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_8
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 148
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v6, v0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    if-eqz v6, :cond_14

    move-object v6, v0

    check-cast v6, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    iget v6, v6, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->id:I

    if-ne v6, v3, :cond_14

    .line 149
    iget-object v6, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v6, v0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v5

    .line 150
    .restart local v5    # "v":Landroid/view/View;
    if-nez v5, :cond_9

    iget-object v6, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-static {v6}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->access$400(Lcom/vkontakte/android/ui/AttachmentsEditorView;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 151
    :cond_9
    if-nez v5, :cond_b

    .line 152
    add-int/lit8 v1, v1, 0x1

    .line 153
    goto :goto_1

    .line 141
    .end local v5    # "v":Landroid/view/View;
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 155
    .restart local v5    # "v":Landroid/view/View;
    :cond_b
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 156
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    .line 157
    const-string v6, "attachment"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/Attachment;

    .line 158
    .local v4, "na":Lcom/vkontakte/android/Attachment;
    invoke-virtual {v5, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 159
    iget-object v6, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-static {v6}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->access$300(Lcom/vkontakte/android/ui/AttachmentsEditorView;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-boolean v6, Lcom/vkontakte/android/APIController;->API_DEBUG:Z

    if-eqz v6, :cond_c

    const-string v6, "vk"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Upload "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " done: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "attachment"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    .end local v4    # "na":Lcom/vkontakte/android/Attachment;
    .end local v5    # "v":Landroid/view/View;
    :cond_c
    :goto_2
    iget-object v6, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v6}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->isUploading()Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-static {v6}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->access$500(Lcom/vkontakte/android/ui/AttachmentsEditorView;)Lcom/vkontakte/android/ui/AttachmentsEditorView$Callback;

    move-result-object v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-static {v6}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->access$500(Lcom/vkontakte/android/ui/AttachmentsEditorView;)Lcom/vkontakte/android/ui/AttachmentsEditorView$Callback;

    move-result-object v6

    invoke-interface {v6}, Lcom/vkontakte/android/ui/AttachmentsEditorView$Callback;->onAllUploadsDone()V

    .line 197
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "id":I
    :cond_d
    const-string v6, "com.vkontakte.android.UPLOAD_FAILED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 198
    const-string v6, "id"

    invoke-virtual {p2, v6, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 199
    .restart local v3    # "id":I
    const/4 v1, 0x0

    .line 200
    .restart local v1    # "i":I
    iget-object v6, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-static {v6}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->access$300(Lcom/vkontakte/android/ui/AttachmentsEditorView;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_e
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 201
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v6, v0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    if-eqz v6, :cond_f

    move-object v6, v0

    check-cast v6, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    iget v6, v6, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->id:I

    if-eq v6, v3, :cond_10

    :cond_f
    instance-of v6, v0, Lcom/vkontakte/android/PendingDocumentAttachment;

    if-eqz v6, :cond_1b

    move-object v6, v0

    check-cast v6, Lcom/vkontakte/android/PendingDocumentAttachment;

    iget v6, v6, Lcom/vkontakte/android/PendingDocumentAttachment;->did:I

    if-ne v6, v3, :cond_1b

    .line 202
    :cond_10
    iget-object v6, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-static {v6}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->access$500(Lcom/vkontakte/android/ui/AttachmentsEditorView;)Lcom/vkontakte/android/ui/AttachmentsEditorView$Callback;

    move-result-object v6

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-static {v6}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->access$500(Lcom/vkontakte/android/ui/AttachmentsEditorView;)Lcom/vkontakte/android/ui/AttachmentsEditorView$Callback;

    move-result-object v6

    invoke-interface {v6}, Lcom/vkontakte/android/ui/AttachmentsEditorView$Callback;->onUploadFailed()V

    .line 203
    :cond_11
    iget-object v6, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v6, v0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v5

    .line 204
    .restart local v5    # "v":Landroid/view/View;
    if-nez v5, :cond_12

    iget-object v6, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-static {v6}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->access$400(Lcom/vkontakte/android/ui/AttachmentsEditorView;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 205
    :cond_12
    if-eqz v5, :cond_e

    .line 206
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_e

    .line 207
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    .line 208
    const v6, 0x7f080043

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 214
    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "id":I
    .end local v5    # "v":Landroid/view/View;
    :cond_13
    return-void

    .line 163
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    .restart local v1    # "i":I
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "id":I
    :cond_14
    instance-of v6, v0, Lcom/vkontakte/android/PendingDocumentAttachment;

    if-eqz v6, :cond_17

    move-object v6, v0

    check-cast v6, Lcom/vkontakte/android/PendingDocumentAttachment;

    iget v6, v6, Lcom/vkontakte/android/PendingDocumentAttachment;->did:I

    if-ne v6, v3, :cond_17

    .line 164
    iget-object v6, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v6, v0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v5

    .line 165
    .restart local v5    # "v":Landroid/view/View;
    if-nez v5, :cond_15

    iget-object v6, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-static {v6}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->access$400(Lcom/vkontakte/android/ui/AttachmentsEditorView;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 166
    :cond_15
    if-nez v5, :cond_16

    .line 167
    add-int/lit8 v1, v1, 0x1

    .line 168
    goto/16 :goto_1

    .line 170
    :cond_16
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 171
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    .line 172
    const-string v6, "attachment"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/Attachment;

    .line 173
    .restart local v4    # "na":Lcom/vkontakte/android/Attachment;
    invoke-virtual {v5, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 174
    iget-object v6, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-static {v6}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->access$300(Lcom/vkontakte/android/ui/AttachmentsEditorView;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-boolean v6, Lcom/vkontakte/android/APIController;->API_DEBUG:Z

    if-eqz v6, :cond_c

    const-string v6, "vk"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Upload "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " done: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "attachment"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 178
    .end local v4    # "na":Lcom/vkontakte/android/Attachment;
    .end local v5    # "v":Landroid/view/View;
    :cond_17
    instance-of v6, v0, Lcom/vkontakte/android/PendingVideoAttachment;

    if-eqz v6, :cond_1a

    move-object v6, v0

    check-cast v6, Lcom/vkontakte/android/PendingVideoAttachment;

    iget v6, v6, Lcom/vkontakte/android/PendingVideoAttachment;->vid:I

    if-ne v6, v3, :cond_1a

    .line 179
    iget-object v6, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v6, v0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v5

    .line 180
    .restart local v5    # "v":Landroid/view/View;
    if-nez v5, :cond_18

    iget-object v6, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-static {v6}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->access$400(Lcom/vkontakte/android/ui/AttachmentsEditorView;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 181
    :cond_18
    if-nez v5, :cond_19

    .line 182
    add-int/lit8 v1, v1, 0x1

    .line 183
    goto/16 :goto_1

    .line 185
    :cond_19
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 186
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    .line 187
    const-string v6, "attachment"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/Attachment;

    .line 188
    .restart local v4    # "na":Lcom/vkontakte/android/Attachment;
    invoke-virtual {v5, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 189
    iget-object v6, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-static {v6}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->access$300(Lcom/vkontakte/android/ui/AttachmentsEditorView;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-boolean v6, Lcom/vkontakte/android/APIController;->API_DEBUG:Z

    if-eqz v6, :cond_c

    const-string v6, "vk"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Upload "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " done: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "attachment"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 193
    .end local v4    # "na":Lcom/vkontakte/android/Attachment;
    .end local v5    # "v":Landroid/view/View;
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 211
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3
.end method
