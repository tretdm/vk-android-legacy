.class public Lcom/vkontakte/android/mediapicker/providers/ResourceProvider;
.super Ljava/lang/Object;
.source "ResourceProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/mediapicker/providers/ResourceProvider$Animations;,
        Lcom/vkontakte/android/mediapicker/providers/ResourceProvider$Drawables;,
        Lcom/vkontakte/android/mediapicker/providers/ResourceProvider$Views;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->context:Landroid/content/Context;

    return-object v0
.end method
