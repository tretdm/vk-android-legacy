.class public interface abstract Lcom/vkontakte/android/UploaderService$UploadCallback;
.super Ljava/lang/Object;
.source "UploaderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/UploaderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UploadCallback"
.end annotation


# virtual methods
.method public abstract setProgress(II)V
.end method

.method public abstract uploadDone(Ljava/lang/String;Lcom/vkontakte/android/Attachment;)V
.end method

.method public abstract uploadFailed()Z
.end method
