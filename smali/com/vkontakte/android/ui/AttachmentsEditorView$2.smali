.class Lcom/vkontakte/android/ui/AttachmentsEditorView$2;
.super Ljava/lang/Object;
.source "AttachmentsEditorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 85
    iput-object p1, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$2;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v9, 0x7f080043

    const/16 v8, 0x8

    const v7, 0x7f080042

    const/4 v6, 0x0

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 89
    .local v1, "aview":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 90
    .local v2, "t":Ljava/lang/Object;
    instance-of v3, v2, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    if-eqz v3, :cond_0

    .line 91
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    .line 92
    .local v0, "a":Lcom/vkontakte/android/ui/PendingPhotoAttachment;
    const-string v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RETRY CLICK "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 94
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 95
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 96
    invoke-static {}, Lcom/vkontakte/android/UploaderService;->getNewID()I

    move-result v3

    iput v3, v0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->id:I

    .line 97
    iget-object v3, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$2;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-static {v3, v0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->access$000(Lcom/vkontakte/android/ui/AttachmentsEditorView;Lcom/vkontakte/android/ui/PendingPhotoAttachment;)V

    .line 99
    .end local v0    # "a":Lcom/vkontakte/android/ui/PendingPhotoAttachment;
    :cond_0
    instance-of v3, v2, Lcom/vkontakte/android/PendingDocumentAttachment;

    if-eqz v3, :cond_1

    .line 100
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/PendingDocumentAttachment;

    .line 101
    .local v0, "a":Lcom/vkontakte/android/PendingDocumentAttachment;
    const-string v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RETRY CLICK "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 103
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 104
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 105
    invoke-static {}, Lcom/vkontakte/android/UploaderService;->getNewID()I

    move-result v3

    iput v3, v0, Lcom/vkontakte/android/PendingDocumentAttachment;->did:I

    .line 106
    iget-object v3, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$2;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-static {v3, v0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->access$100(Lcom/vkontakte/android/ui/AttachmentsEditorView;Lcom/vkontakte/android/PendingDocumentAttachment;)V

    .line 108
    .end local v0    # "a":Lcom/vkontakte/android/PendingDocumentAttachment;
    :cond_1
    instance-of v3, v2, Lcom/vkontakte/android/PendingVideoAttachment;

    if-eqz v3, :cond_2

    .line 109
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/PendingVideoAttachment;

    .line 110
    .local v0, "a":Lcom/vkontakte/android/PendingVideoAttachment;
    const-string v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RETRY CLICK "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 112
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 113
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 114
    invoke-static {}, Lcom/vkontakte/android/UploaderService;->getNewID()I

    move-result v3

    iput v3, v0, Lcom/vkontakte/android/PendingVideoAttachment;->vid:I

    .line 115
    iget-object v3, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$2;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-static {v3, v0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->access$200(Lcom/vkontakte/android/ui/AttachmentsEditorView;Lcom/vkontakte/android/PendingVideoAttachment;)V

    .line 117
    .end local v0    # "a":Lcom/vkontakte/android/PendingVideoAttachment;
    :cond_2
    return-void
.end method
