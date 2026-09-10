.class public Lcom/vkontakte/android/APIRequest$APIHandler;
.super Ljava/lang/Object;
.source "APIRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/APIRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "APIHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 255
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "resp"    # Lorg/json/JSONObject;

    .prologue
    .line 254
    return-void
.end method
