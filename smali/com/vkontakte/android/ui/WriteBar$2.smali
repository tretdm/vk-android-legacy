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
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/WriteBar$2;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ui/WriteBar$2;)Lcom/vkontakte/android/ui/WriteBar;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/vkontakte/android/ui/WriteBar$2;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    return-object v0
.end method


# virtual methods
.method public onAllUploadsDone()V
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/vkontakte/android/ui/WriteBar$2;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    invoke-static {v0}, Lcom/vkontakte/android/ui/WriteBar;->access$2(Lcom/vkontakte/android/ui/WriteBar;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/vkontakte/android/ui/WriteBar$2;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    invoke-static {v0}, Lcom/vkontakte/android/ui/WriteBar;->access$2(Lcom/vkontakte/android/ui/WriteBar;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 119
    iget-object v0, p0, Lcom/vkontakte/android/ui/WriteBar$2;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    iget-object v1, p0, Lcom/vkontakte/android/ui/WriteBar$2;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vkontakte/android/ui/WriteBar;->access$3(Lcom/vkontakte/android/ui/WriteBar;Ljava/lang/Runnable;)V

    invoke-static {v0, v2}, Lcom/vkontakte/android/ui/WriteBar;->access$4(Lcom/vkontakte/android/ui/WriteBar;Ljava/lang/Runnable;)V

    .line 121
    :cond_0
    return-void
.end method

.method public onAttachmentRemoved(Lcom/vkontakte/android/Attachment;)V
    .locals 4
    .param p1, "att"    # Lcom/vkontakte/android/Attachment;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/vkontakte/android/ui/WriteBar$2;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    invoke-static {v0}, Lcom/vkontakte/android/ui/WriteBar;->access$0(Lcom/vkontakte/android/ui/WriteBar;)Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 104
    iget-object v0, p0, Lcom/vkontakte/android/ui/WriteBar$2;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    new-instance v1, Lcom/vkontakte/android/ui/WriteBar$2$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ui/WriteBar$2$1;-><init>(Lcom/vkontakte/android/ui/WriteBar$2;)V

    .line 108
    const-wide/16 v2, 0x12c

    .line 104
    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/ui/WriteBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/ui/WriteBar$2;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/WriteBar;->access$1(Lcom/vkontakte/android/ui/WriteBar;Z)V

    goto :goto_0
.end method

.method public onUploadFailed()V
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/vkontakte/android/ui/WriteBar$2;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    invoke-static {v0}, Lcom/vkontakte/android/ui/WriteBar;->access$5(Lcom/vkontakte/android/ui/WriteBar;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/vkontakte/android/ui/WriteBar$2;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    invoke-static {v0}, Lcom/vkontakte/android/ui/WriteBar;->access$5(Lcom/vkontakte/android/ui/WriteBar;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 127
    iget-object v0, p0, Lcom/vkontakte/android/ui/WriteBar$2;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    iget-object v1, p0, Lcom/vkontakte/android/ui/WriteBar$2;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vkontakte/android/ui/WriteBar;->access$3(Lcom/vkontakte/android/ui/WriteBar;Ljava/lang/Runnable;)V

    invoke-static {v0, v2}, Lcom/vkontakte/android/ui/WriteBar;->access$4(Lcom/vkontakte/android/ui/WriteBar;Ljava/lang/Runnable;)V

    .line 129
    :cond_0
    return-void
.end method
