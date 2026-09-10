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

    .line 119
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    const v9, 0x7f09005a

    .line 122
    sget-boolean v5, Lcom/vkontakte/android/APIController;->API_DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "upload state "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "id"

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_0
    const-string v5, "com.vkontakte.android.UPLOAD_PROGRESS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 124
    const-string v5, "id"

    invoke-virtual {p2, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 125
    .local v2, "id":I
    const/4 v1, 0x0

    .line 126
    .local v1, "i":I
    iget-object v5, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-static {v5}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->access$3(Lcom/vkontakte/android/ui/AttachmentsEditorView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_8

    .line 144
    .end local v1    # "i":I
    .end local v2    # "id":I
    :cond_2
    :goto_1
    const-string v5, "com.vkontakte.android.UPLOAD_DONE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 145
    const-string v5, "id"

    invoke-virtual {p2, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 146
    .restart local v2    # "id":I
    const/4 v1, 0x0

    .line 147
    .restart local v1    # "i":I
    iget-object v5, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-static {v5}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->access$3(Lcom/vkontakte/android/ui/AttachmentsEditorView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_f

    .line 195
    :cond_4
    :goto_3
    iget-object v5, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v5}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->isUploading()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-static {v5}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->access$5(Lcom/vkontakte/android/ui/AttachmentsEditorView;)Lcom/vkontakte/android/ui/AttachmentsEditorView$Callback;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-static {v5}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->access$5(Lcom/vkontakte/android/ui/AttachmentsEditorView;)Lcom/vkontakte/android/ui/AttachmentsEditorView$Callback;

    move-result-object v5

    invoke-interface {v5}, Lcom/vkontakte/android/ui/AttachmentsEditorView$Callback;->onAllUploadsDone()V

    .line 197
    .end local v1    # "i":I
    .end local v2    # "id":I
    :cond_5
    const-string v5, "com.vkontakte.android.UPLOAD_FAILED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 198
    const-string v5, "id"

    invoke-virtual {p2, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 199
    .restart local v2    # "id":I
    const/4 v1, 0x0

    .line 200
    .restart local v1    # "i":I
    iget-object v5, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-static {v5}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->access$3(Lcom/vkontakte/android/ui/AttachmentsEditorView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_19

    .line 214
    .end local v1    # "i":I
    .end local v2    # "id":I
    :cond_7
    :goto_5
    return-void

    .line 126
    .restart local v1    # "i":I
    .restart local v2    # "id":I
    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 127
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v5, v0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    if-eqz v5, :cond_9

    move-object v5, v0

    check-cast v5, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    iget v5, v5, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->id:I

    if-eq v5, v2, :cond_b

    :cond_9
    instance-of v5, v0, Lcom/vkontakte/android/PendingDocumentAttachment;

    if-eqz v5, :cond_a

    move-object v5, v0

    check-cast v5, Lcom/vkontakte/android/PendingDocumentAttachment;

    iget v5, v5, Lcom/vkontakte/android/PendingDocumentAttachment;->did:I

    if-eq v5, v2, :cond_b

    :cond_a
    instance-of v5, v0, Lcom/vkontakte/android/PendingVideoAttachment;

    if-eqz v5, :cond_e

    move-object v5, v0

    check-cast v5, Lcom/vkontakte/android/PendingVideoAttachment;

    iget v5, v5, Lcom/vkontakte/android/PendingVideoAttachment;->vid:I

    if-ne v5, v2, :cond_e

    .line 128
    :cond_b
    iget-object v5, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v5, v0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    .line 129
    .local v4, "v":Landroid/view/View;
    if-nez v4, :cond_c

    iget-object v5, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-static {v5}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->access$4(Lcom/vkontakte/android/ui/AttachmentsEditorView;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 131
    :cond_c
    if-nez v4, :cond_d

    .line 132
    add-int/lit8 v1, v1, 0x1

    .line 133
    goto/16 :goto_0

    .line 135
    :cond_d
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 136
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    const-string v6, "done"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 137
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    const-string v6, "total"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 138
    sget-boolean v5, Lcom/vkontakte/android/APIController;->API_DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Upload "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " progress: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "done"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "total"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 141
    .end local v4    # "v":Landroid/view/View;
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 147
    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    :cond_f
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 148
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v5, v0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    if-eqz v5, :cond_12

    move-object v5, v0

    check-cast v5, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    iget v5, v5, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->id:I

    if-ne v5, v2, :cond_12

    .line 149
    iget-object v5, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v5, v0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    .line 150
    .restart local v4    # "v":Landroid/view/View;
    if-nez v4, :cond_10

    iget-object v5, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-static {v5}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->access$4(Lcom/vkontakte/android/ui/AttachmentsEditorView;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 151
    :cond_10
    if-nez v4, :cond_11

    .line 152
    add-int/lit8 v1, v1, 0x1

    .line 153
    goto/16 :goto_2

    .line 155
    :cond_11
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 156
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 157
    const-string v5, "attachment"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/Attachment;

    .line 158
    .local v3, "na":Lcom/vkontakte/android/Attachment;
    invoke-virtual {v4, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 159
    iget-object v5, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-static {v5}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->access$3(Lcom/vkontakte/android/ui/AttachmentsEditorView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-boolean v5, Lcom/vkontakte/android/APIController;->API_DEBUG:Z

    if-eqz v5, :cond_4

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

    .line 163
    .end local v3    # "na":Lcom/vkontakte/android/Attachment;
    .end local v4    # "v":Landroid/view/View;
    :cond_12
    instance-of v5, v0, Lcom/vkontakte/android/PendingDocumentAttachment;

    if-eqz v5, :cond_15

    move-object v5, v0

    check-cast v5, Lcom/vkontakte/android/PendingDocumentAttachment;

    iget v5, v5, Lcom/vkontakte/android/PendingDocumentAttachment;->did:I

    if-ne v5, v2, :cond_15

    .line 164
    iget-object v5, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v5, v0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    .line 165
    .restart local v4    # "v":Landroid/view/View;
    if-nez v4, :cond_13

    iget-object v5, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-static {v5}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->access$4(Lcom/vkontakte/android/ui/AttachmentsEditorView;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 166
    :cond_13
    if-nez v4, :cond_14

    .line 167
    add-int/lit8 v1, v1, 0x1

    .line 168
    goto/16 :goto_2

    .line 170
    :cond_14
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 171
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 172
    const-string v5, "attachment"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/Attachment;

    .line 173
    .restart local v3    # "na":Lcom/vkontakte/android/Attachment;
    invoke-virtual {v4, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 174
    iget-object v5, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-static {v5}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->access$3(Lcom/vkontakte/android/ui/AttachmentsEditorView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-boolean v5, Lcom/vkontakte/android/APIController;->API_DEBUG:Z

    if-eqz v5, :cond_4

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

    .line 178
    .end local v3    # "na":Lcom/vkontakte/android/Attachment;
    .end local v4    # "v":Landroid/view/View;
    :cond_15
    instance-of v5, v0, Lcom/vkontakte/android/PendingVideoAttachment;

    if-eqz v5, :cond_18

    move-object v5, v0

    check-cast v5, Lcom/vkontakte/android/PendingVideoAttachment;

    iget v5, v5, Lcom/vkontakte/android/PendingVideoAttachment;->vid:I

    if-ne v5, v2, :cond_18

    .line 179
    iget-object v5, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v5, v0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    .line 180
    .restart local v4    # "v":Landroid/view/View;
    if-nez v4, :cond_16

    iget-object v5, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-static {v5}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->access$4(Lcom/vkontakte/android/ui/AttachmentsEditorView;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 181
    :cond_16
    if-nez v4, :cond_17

    .line 182
    add-int/lit8 v1, v1, 0x1

    .line 183
    goto/16 :goto_2

    .line 185
    :cond_17
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 186
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 187
    const-string v5, "attachment"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/Attachment;

    .line 188
    .restart local v3    # "na":Lcom/vkontakte/android/Attachment;
    invoke-virtual {v4, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 189
    iget-object v5, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-static {v5}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->access$3(Lcom/vkontakte/android/ui/AttachmentsEditorView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-boolean v5, Lcom/vkontakte/android/APIController;->API_DEBUG:Z

    if-eqz v5, :cond_4

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

    .line 193
    .end local v3    # "na":Lcom/vkontakte/android/Attachment;
    .end local v4    # "v":Landroid/view/View;
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 200
    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    :cond_19
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 201
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v5, v0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    if-eqz v5, :cond_1a

    move-object v5, v0

    check-cast v5, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    iget v5, v5, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->id:I

    if-eq v5, v2, :cond_1b

    :cond_1a
    instance-of v5, v0, Lcom/vkontakte/android/PendingDocumentAttachment;

    if-eqz v5, :cond_1e

    move-object v5, v0

    check-cast v5, Lcom/vkontakte/android/PendingDocumentAttachment;

    iget v5, v5, Lcom/vkontakte/android/PendingDocumentAttachment;->did:I

    if-ne v5, v2, :cond_1e

    .line 202
    :cond_1b
    iget-object v5, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-static {v5}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->access$5(Lcom/vkontakte/android/ui/AttachmentsEditorView;)Lcom/vkontakte/android/ui/AttachmentsEditorView$Callback;

    move-result-object v5

    if-eqz v5, :cond_1c

    iget-object v5, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-static {v5}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->access$5(Lcom/vkontakte/android/ui/AttachmentsEditorView;)Lcom/vkontakte/android/ui/AttachmentsEditorView$Callback;

    move-result-object v5

    invoke-interface {v5}, Lcom/vkontakte/android/ui/AttachmentsEditorView$Callback;->onUploadFailed()V

    .line 203
    :cond_1c
    iget-object v5, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v5, v0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    .line 204
    .restart local v4    # "v":Landroid/view/View;
    if-nez v4, :cond_1d

    iget-object v5, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-static {v5}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->access$4(Lcom/vkontakte/android/ui/AttachmentsEditorView;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 205
    :cond_1d
    if-eqz v4, :cond_6

    .line 206
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 207
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 208
    const v5, 0x7f09005b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 211
    .end local v4    # "v":Landroid/view/View;
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4
.end method
