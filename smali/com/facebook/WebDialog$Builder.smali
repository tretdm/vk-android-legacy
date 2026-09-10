.class public Lcom/facebook/WebDialog$Builder;
.super Lcom/facebook/WebDialog$BuilderBase;
.source "WebDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/WebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/WebDialog$BuilderBase",
        "<",
        "Lcom/facebook/WebDialog$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "applicationId"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 623
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/WebDialog$BuilderBase;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 624
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/facebook/WebDialog;
    .locals 1

    .prologue
    .line 598
    invoke-super {p0}, Lcom/facebook/WebDialog$BuilderBase;->build()Lcom/facebook/WebDialog;

    move-result-object v0

    return-object v0
.end method
