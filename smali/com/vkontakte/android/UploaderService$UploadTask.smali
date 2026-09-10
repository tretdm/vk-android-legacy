.class public Lcom/vkontakte/android/UploaderService$UploadTask;
.super Ljava/lang/Object;
.source "UploaderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/UploaderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UploadTask"
.end annotation


# instance fields
.field attcahments:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/vkontakte/android/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field callback:Lcom/vkontakte/android/UploaderService$UploadCallback;

.field file:Ljava/lang/String;

.field id:I

.field info:Ljava/lang/Object;

.field isTemp:Z

.field mediaIdString:Ljava/lang/String;

.field requestParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field resultObj:Lorg/json/JSONObject;

.field showNotification:Z

.field state:I

.field sub:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/UploaderService$UploadTask;",
            ">;"
        }
    .end annotation
.end field

.field type:I

.field uploadResponse:Ljava/lang/String;

.field uploadServer:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/UploaderService$UploadTask;->showNotification:Z

    .line 198
    return-void
.end method
