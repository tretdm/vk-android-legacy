.class Lcom/vkontakte/android/ui/WriteBar$2;
.super Ljava/lang/Object;
.source "WriteBar.java"

# interfaces
.implements Lcom/vkontakte/android/ui/AttachmentsEditorView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/WriteBar;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/WriteBar;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/WriteBar;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/vkontakte/android/ui/WriteBar$2;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllUploadsDone()V
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/vkontakte/android/ui/WriteBar$2;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    invoke-static {v0}, Lcom/vkontakte/android/ui/WriteBar;->access$200(Lcom/vkontakte/android/ui/WriteBar;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/vkontakte/android/ui/WriteBar$2;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    invoke-static {v0}, Lcom/vkontakte/android/ui/WriteBar;->access$200(Lcom/vkontakte/android/ui/WriteBar;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 132
    iget-object v0, p0, Lcom/vkontakte/android/ui/WriteBar$2;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    iget-object v1, p0, Lcom/vkontakte/android/ui/WriteBar$2;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vkontakte/android/ui/WriteBar;->access$302(Lcom/vkontakte/android/ui/WriteBar;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/WriteBar;->access$202(Lcom/vkontakte/android/ui/WriteBar;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 134
    :cond_0
    return-void
.end method

.method public onAttachmentRemoved(Lcom/vkontakte/android/Attachment;)V
    .locals 4
    .param p1, "att"    # Lcom/vkontakte/android/Attachment;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/vkontakte/android/ui/WriteBar$2;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    invoke-static {v0}, Lcom/vkontakte/android/ui/WriteBar;->access$000(Lcom/vkontakte/android/ui/WriteBar;)Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getRealCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 116
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 117
    iget-object v0, p0, Lcom/vkontakte/android/ui/WriteBar$2;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    new-instance v1, Lcom/vkontakte/android/ui/WriteBar$2$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ui/WriteBar$2$1;-><init>(Lcom/vkontakte/android/ui/WriteBar$2;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/ui/WriteBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/ui/WriteBar$2;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/WriteBar;->access$100(Lcom/vkontakte/android/ui/WriteBar;Z)V

    goto :goto_0
.end method

.method public onUploadFailed()V
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/vkontakte/android/ui/WriteBar$2;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    invoke-static {v0}, Lcom/vkontakte/android/ui/WriteBar;->access$300(Lcom/vkontakte/android/ui/WriteBar;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/vkontakte/android/ui/WriteBar$2;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    invoke-static {v0}, Lcom/vkontakte/android/ui/WriteBar;->access$300(Lcom/vkontakte/android/ui/WriteBar;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 140
    iget-object v0, p0, Lcom/vkontakte/android/ui/WriteBar$2;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    iget-object v1, p0, Lcom/vkontakte/android/ui/WriteBar$2;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vkontakte/android/ui/WriteBar;->access$302(Lcom/vkontakte/android/ui/WriteBar;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/WriteBar;->access$202(Lcom/vkontakte/android/ui/WriteBar;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 142
    :cond_0
    return-void
.end method
