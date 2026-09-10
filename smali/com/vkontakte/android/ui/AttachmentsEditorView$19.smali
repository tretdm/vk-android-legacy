.class Lcom/vkontakte/android/ui/AttachmentsEditorView$19;
.super Ljava/lang/Object;
.source "AttachmentsEditorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/AttachmentsEditorView;->uploadVideo(Lcom/vkontakte/android/PendingVideoAttachment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

.field private final synthetic val$att:Lcom/vkontakte/android/PendingVideoAttachment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/AttachmentsEditorView;Lcom/vkontakte/android/PendingVideoAttachment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$19;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    iput-object p2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$19;->val$att:Lcom/vkontakte/android/PendingVideoAttachment;

    .line 875
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 877
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$19;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 878
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "new"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 879
    const-string v2, "file"

    iget-object v3, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$19;->val$att:Lcom/vkontakte/android/PendingVideoAttachment;

    iget-object v3, v3, Lcom/vkontakte/android/PendingVideoAttachment;->vfile:Lcom/vkontakte/android/api/VideoFile;

    iget-object v3, v3, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 880
    const-string v2, "id"

    iget-object v3, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$19;->val$att:Lcom/vkontakte/android/PendingVideoAttachment;

    iget v3, v3, Lcom/vkontakte/android/PendingVideoAttachment;->vid:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 881
    const-string v2, "type"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 882
    const-string v2, "no_notify"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 883
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 886
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "is_private"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    const-string v2, "name"

    iget-object v3, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$19;->val$att:Lcom/vkontakte/android/PendingVideoAttachment;

    iget-object v3, v3, Lcom/vkontakte/android/PendingVideoAttachment;->vfile:Lcom/vkontakte/android/api/VideoFile;

    iget-object v3, v3, Lcom/vkontakte/android/api/VideoFile;->title:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    const-string v2, "duration"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$19;->val$att:Lcom/vkontakte/android/PendingVideoAttachment;

    iget-object v4, v4, Lcom/vkontakte/android/PendingVideoAttachment;->vfile:Lcom/vkontakte/android/api/VideoFile;

    iget v4, v4, Lcom/vkontakte/android/api/VideoFile;->duration:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    const-string v2, "req_params"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 890
    iget-object v2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$19;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 891
    return-void
.end method
