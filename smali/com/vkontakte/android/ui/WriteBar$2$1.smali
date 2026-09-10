.class Lcom/vkontakte/android/ui/WriteBar$2$1;
.super Ljava/lang/Object;
.source "WriteBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/WriteBar$2;->onAttachmentRemoved(Lcom/vkontakte/android/Attachment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/ui/WriteBar$2;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/WriteBar$2;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/vkontakte/android/ui/WriteBar$2$1;->this$1:Lcom/vkontakte/android/ui/WriteBar$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/vkontakte/android/ui/WriteBar$2$1;->this$1:Lcom/vkontakte/android/ui/WriteBar$2;

    iget-object v0, v0, Lcom/vkontakte/android/ui/WriteBar$2;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/WriteBar;->access$100(Lcom/vkontakte/android/ui/WriteBar;Z)V

    .line 120
    return-void
.end method
