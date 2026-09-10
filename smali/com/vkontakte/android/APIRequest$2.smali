.class Lcom/vkontakte/android/APIRequest$2;
.super Ljava/lang/Object;
.source "APIRequest.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;IZZ)Lcom/vkontakte/android/APIRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/APIRequest;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/vkontakte/android/APIRequest$2;->this$0:Lcom/vkontakte/android/APIRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/vkontakte/android/APIRequest$2;->this$0:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 244
    return-void
.end method
