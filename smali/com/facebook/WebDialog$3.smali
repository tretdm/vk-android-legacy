.class Lcom/facebook/WebDialog$3;
.super Ljava/lang/Object;
.source "WebDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/WebDialog;->createCrossImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/WebDialog;


# direct methods
.method constructor <init>(Lcom/facebook/WebDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/WebDialog$3;->this$0:Lcom/facebook/WebDialog;

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 326
    iget-object v0, p0, Lcom/facebook/WebDialog$3;->this$0:Lcom/facebook/WebDialog;

    invoke-static {v0}, Lcom/facebook/WebDialog;->access$1(Lcom/facebook/WebDialog;)V

    .line 327
    iget-object v0, p0, Lcom/facebook/WebDialog$3;->this$0:Lcom/facebook/WebDialog;

    invoke-virtual {v0}, Lcom/facebook/WebDialog;->dismiss()V

    .line 328
    return-void
.end method
