.class public Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;
.super Lcom/vkontakte/android/UserProfile;
.source "ContactsSyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/ContactsSyncAdapterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtendedUserProfile"
.end annotation


# instance fields
.field bdate:Ljava/lang/String;

.field nickname:Ljava/lang/String;

.field phone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 600
    invoke-direct {p0}, Lcom/vkontakte/android/UserProfile;-><init>()V

    return-void
.end method
