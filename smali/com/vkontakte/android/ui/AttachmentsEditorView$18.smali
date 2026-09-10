.class Lcom/vkontakte/android/ui/AttachmentsEditorView$18;
.super Ljava/lang/Object;
.source "AttachmentsEditorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/AttachmentsEditorView;->uploadDocument(Lcom/vkontakte/android/PendingDocumentAttachment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

.field private final synthetic val$att:Lcom/vkontakte/android/PendingDocumentAttachment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/AttachmentsEditorView;Lcom/vkontakte/android/PendingDocumentAttachment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$18;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    iput-object p2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$18;->val$att:Lcom/vkontakte/android/PendingDocumentAttachment;

    .line 856
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 858
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$18;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 859
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "new"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 860
    const-string v2, "file"

    iget-object v3, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$18;->val$att:Lcom/vkontakte/android/PendingDocumentAttachment;

    iget-object v3, v3, Lcom/vkontakte/android/PendingDocumentAttachment;->url:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 861
    const-string v2, "id"

    iget-object v3, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$18;->val$att:Lcom/vkontakte/android/PendingDocumentAttachment;

    iget v3, v3, Lcom/vkontakte/android/PendingDocumentAttachment;->did:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 862
    const-string v2, "type"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 863
    const-string v2, "no_notify"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 864
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 865
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "_mehod"

    const-string v3, "docs.getWallUploadServer"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    iget-object v2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$18;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    iget v2, v2, Lcom/vkontakte/android/ui/AttachmentsEditorView;->uploadOwnerId:I

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$18;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Lcom/vkontakte/android/NewPostActivity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$18;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    iget v2, v2, Lcom/vkontakte/android/ui/AttachmentsEditorView;->uploadOwnerId:I

    neg-int v2, v2

    invoke-static {v2}, Lcom/vkontakte/android/data/Groups;->getAdminLevel(I)I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 867
    const-string v2, "group_id"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$18;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    iget v4, v4, Lcom/vkontakte/android/ui/AttachmentsEditorView;->uploadOwnerId:I

    neg-int v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    :cond_0
    const-string v2, "req_params"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 869
    iget-object v2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$18;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 870
    return-void
.end method
