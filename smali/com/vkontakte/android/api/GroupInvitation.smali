.class public Lcom/vkontakte/android/api/GroupInvitation;
.super Ljava/lang/Object;
.source "GroupInvitation.java"


# static fields
.field public static final STATE_ACCEPTED:I = 0x2

.field public static final STATE_DECLINED:I = 0x3

.field public static final STATE_LOADING:I = 0x1

.field public static final STATE_NEW:I = 0x0

.field public static final STATE_UNSURE:I = 0x4


# instance fields
.field public group:Lcom/vkontakte/android/api/Group;

.field public inviter:Lcom/vkontakte/android/UserProfile;

.field public size:I

.field public state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
