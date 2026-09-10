.class Lcom/vkontakte/android/ChatActivity$32;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ChatActivity;->uploadNextPhoto([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field r:Z

.field sync:Ljava/lang/Object;

.field final synthetic this$0:Lcom/vkontakte/android/ChatActivity;

.field private final synthetic val$_i:I

.field private final synthetic val$atts:[Ljava/lang/String;

.field private final synthetic val$file:Ljava/lang/String;

.field private final synthetic val$msg:Ljava/lang/String;

.field private final synthetic val$pdlg:Landroid/app/ProgressDialog;

.field private final synthetic val$thumbs:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ChatActivity;Ljava/lang/String;Landroid/app/ProgressDialog;Ljava/lang/String;[Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ChatActivity$32;->this$0:Lcom/vkontakte/android/ChatActivity;

    iput-object p2, p0, Lcom/vkontakte/android/ChatActivity$32;->val$file:Ljava/lang/String;

    iput-object p3, p0, Lcom/vkontakte/android/ChatActivity$32;->val$pdlg:Landroid/app/ProgressDialog;

    iput-object p4, p0, Lcom/vkontakte/android/ChatActivity$32;->val$msg:Ljava/lang/String;

    iput-object p5, p0, Lcom/vkontakte/android/ChatActivity$32;->val$atts:[Ljava/lang/String;

    iput p6, p0, Lcom/vkontakte/android/ChatActivity$32;->val$_i:I

    iput-object p7, p0, Lcom/vkontakte/android/ChatActivity$32;->val$thumbs:[Ljava/lang/String;

    .line 1622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1623
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ChatActivity$32;->sync:Ljava/lang/Object;

    .line 1624
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/ChatActivity$32;->r:Z

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ChatActivity$32;)Lcom/vkontakte/android/ChatActivity;
    .locals 1

    .prologue
    .line 1622
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$32;->this$0:Lcom/vkontakte/android/ChatActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 1626
    sget-object v0, Lcom/vkontakte/android/UploaderService;->currentInstance:Lcom/vkontakte/android/UploaderService;

    if-nez v0, :cond_0

    .line 1627
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$32;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$51(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/XLinearLayout;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Lcom/vkontakte/android/ui/XLinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1708
    :goto_0
    return-void

    .line 1630
    :cond_0
    sget-object v7, Lcom/vkontakte/android/UploaderService;->currentInstance:Lcom/vkontakte/android/UploaderService;

    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$32;->val$file:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/vkontakte/android/ChatActivity$32$1;

    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity$32;->val$pdlg:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/vkontakte/android/ChatActivity$32;->val$msg:Ljava/lang/String;

    iget-object v4, p0, Lcom/vkontakte/android/ChatActivity$32;->val$atts:[Ljava/lang/String;

    iget v5, p0, Lcom/vkontakte/android/ChatActivity$32;->val$_i:I

    iget-object v6, p0, Lcom/vkontakte/android/ChatActivity$32;->val$thumbs:[Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/vkontakte/android/ChatActivity$32$1;-><init>(Lcom/vkontakte/android/ChatActivity$32;Landroid/app/ProgressDialog;Ljava/lang/String;[Ljava/lang/String;I[Ljava/lang/String;)V

    invoke-virtual {v7, v8, v0}, Lcom/vkontakte/android/UploaderService;->setCallbackForFile(Ljava/lang/String;Lcom/vkontakte/android/UploaderService$UploadCallback;)V

    goto :goto_0
.end method
