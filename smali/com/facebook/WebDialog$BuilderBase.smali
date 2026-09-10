.class Lcom/facebook/WebDialog$BuilderBase;
.super Ljava/lang/Object;
.source "WebDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/WebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuilderBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CONCRETE:",
        "Lcom/facebook/WebDialog$BuilderBase",
        "<*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private applicationId:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private listener:Lcom/facebook/WebDialog$OnCompleteListener;

.field private parameters:Landroid/os/Bundle;

.field private theme:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "applicationId"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 510
    .local p0, "this":Lcom/facebook/WebDialog$BuilderBase;, "Lcom/facebook/WebDialog$BuilderBase<TCONCRETE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    const v0, 0x1030010

    iput v0, p0, Lcom/facebook/WebDialog$BuilderBase;->theme:I

    .line 512
    iput-object p2, p0, Lcom/facebook/WebDialog$BuilderBase;->applicationId:Ljava/lang/String;

    .line 514
    invoke-direct {p0, p1, p3, p4}, Lcom/facebook/WebDialog$BuilderBase;->finishInit(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 515
    return-void
.end method

.method private finishInit(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 585
    .local p0, "this":Lcom/facebook/WebDialog$BuilderBase;, "Lcom/facebook/WebDialog$BuilderBase<TCONCRETE;>;"
    iput-object p1, p0, Lcom/facebook/WebDialog$BuilderBase;->context:Landroid/content/Context;

    .line 586
    iput-object p2, p0, Lcom/facebook/WebDialog$BuilderBase;->action:Ljava/lang/String;

    .line 587
    if-eqz p3, :cond_0

    .line 588
    iput-object p3, p0, Lcom/facebook/WebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    .line 592
    :goto_0
    return-void

    .line 590
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/facebook/WebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/facebook/WebDialog;
    .locals 6

    .prologue
    .line 554
    .local p0, "this":Lcom/facebook/WebDialog$BuilderBase;, "Lcom/facebook/WebDialog$BuilderBase<TCONCRETE;>;"
    iget-object v0, p0, Lcom/facebook/WebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    const-string v1, "app_id"

    iget-object v2, p0, Lcom/facebook/WebDialog$BuilderBase;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    iget-object v0, p0, Lcom/facebook/WebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    const-string v1, "redirect_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/facebook/WebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    const-string v1, "redirect_uri"

    const-string v2, "fbconnect://success"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    :cond_0
    new-instance v0, Lcom/facebook/WebDialog;

    iget-object v1, p0, Lcom/facebook/WebDialog$BuilderBase;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/WebDialog$BuilderBase;->action:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/WebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    iget v4, p0, Lcom/facebook/WebDialog$BuilderBase;->theme:I

    iget-object v5, p0, Lcom/facebook/WebDialog$BuilderBase;->listener:Lcom/facebook/WebDialog$OnCompleteListener;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/WebDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/WebDialog$OnCompleteListener;)V

    return-object v0
.end method

.method protected getApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 565
    .local p0, "this":Lcom/facebook/WebDialog$BuilderBase;, "Lcom/facebook/WebDialog$BuilderBase<TCONCRETE;>;"
    iget-object v0, p0, Lcom/facebook/WebDialog$BuilderBase;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 569
    .local p0, "this":Lcom/facebook/WebDialog$BuilderBase;, "Lcom/facebook/WebDialog$BuilderBase<TCONCRETE;>;"
    iget-object v0, p0, Lcom/facebook/WebDialog$BuilderBase;->context:Landroid/content/Context;

    return-object v0
.end method

.method protected getListener()Lcom/facebook/WebDialog$OnCompleteListener;
    .locals 1

    .prologue
    .line 581
    .local p0, "this":Lcom/facebook/WebDialog$BuilderBase;, "Lcom/facebook/WebDialog$BuilderBase<TCONCRETE;>;"
    iget-object v0, p0, Lcom/facebook/WebDialog$BuilderBase;->listener:Lcom/facebook/WebDialog$OnCompleteListener;

    return-object v0
.end method

.method protected getParameters()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 577
    .local p0, "this":Lcom/facebook/WebDialog$BuilderBase;, "Lcom/facebook/WebDialog$BuilderBase<TCONCRETE;>;"
    iget-object v0, p0, Lcom/facebook/WebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    return-object v0
.end method

.method protected getTheme()I
    .locals 1

    .prologue
    .line 573
    .local p0, "this":Lcom/facebook/WebDialog$BuilderBase;, "Lcom/facebook/WebDialog$BuilderBase<TCONCRETE;>;"
    iget v0, p0, Lcom/facebook/WebDialog$BuilderBase;->theme:I

    return v0
.end method

.method public setOnCompleteListener(Lcom/facebook/WebDialog$OnCompleteListener;)Lcom/facebook/WebDialog$BuilderBase;
    .locals 1
    .param p1, "listener"    # Lcom/facebook/WebDialog$OnCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/WebDialog$OnCompleteListener;",
            ")TCONCRETE;"
        }
    .end annotation

    .prologue
    .line 537
    .local p0, "this":Lcom/facebook/WebDialog$BuilderBase;, "Lcom/facebook/WebDialog$BuilderBase<TCONCRETE;>;"
    iput-object p1, p0, Lcom/facebook/WebDialog$BuilderBase;->listener:Lcom/facebook/WebDialog$OnCompleteListener;

    .line 539
    move-object v0, p0

    .line 540
    .local v0, "result":Lcom/facebook/WebDialog$BuilderBase;, "TCONCRETE;"
    return-object v0
.end method

.method public setTheme(I)Lcom/facebook/WebDialog$BuilderBase;
    .locals 1
    .param p1, "theme"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TCONCRETE;"
        }
    .end annotation

    .prologue
    .line 524
    .local p0, "this":Lcom/facebook/WebDialog$BuilderBase;, "Lcom/facebook/WebDialog$BuilderBase<TCONCRETE;>;"
    iput p1, p0, Lcom/facebook/WebDialog$BuilderBase;->theme:I

    .line 526
    move-object v0, p0

    .line 527
    .local v0, "result":Lcom/facebook/WebDialog$BuilderBase;, "TCONCRETE;"
    return-object v0
.end method
