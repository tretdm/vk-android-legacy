.class public Lcom/vkontakte/android/APIRequest$ErrorResponse;
.super Ljava/lang/Object;
.source "APIRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/APIRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ErrorResponse"
.end annotation


# instance fields
.field public errorCode:I

.field public errorMessage:Ljava/lang/String;

.field final synthetic this$0:Lcom/vkontakte/android/APIRequest;


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/APIRequest;ILjava/lang/String;)V
    .locals 0
    .param p2, "code"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 458
    iput-object p1, p0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->this$0:Lcom/vkontakte/android/APIRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 459
    iput p2, p0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    .line 460
    iput-object p3, p0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    .line 461
    return-void
.end method
