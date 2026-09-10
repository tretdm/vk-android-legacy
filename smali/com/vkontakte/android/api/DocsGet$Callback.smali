.class public interface abstract Lcom/vkontakte/android/api/DocsGet$Callback;
.super Ljava/lang/Object;
.source "DocsGet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/api/DocsGet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract fail(ILjava/lang/String;)V
.end method

.method public abstract success(ILjava/util/Vector;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/api/Document;",
            ">;Z)V"
        }
    .end annotation
.end method
