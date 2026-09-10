.class public Lcom/vkontakte/android/api/ExtendedUserProfile;
.super Ljava/lang/Object;
.source "ExtendedUserProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;,
        Lcom/vkontakte/android/api/ExtendedUserProfile$School;,
        Lcom/vkontakte/android/api/ExtendedUserProfile$University;
    }
.end annotation


# static fields
.field public static final ACCESS_CLOSED:I = 0x1

.field public static final ACCESS_OPEN:I = 0x0

.field public static final ACCESS_PRIVATE:I = 0x2

.field public static final FRIEND_STATUS_FRIENDS:I = 0x3

.field public static final FRIEND_STATUS_NONE:I = 0x0

.field public static final FRIEND_STATUS_RECV_REQUEST:I = 0x2

.field public static final FRIEND_STATUS_SENT_REQUEST:I = 0x1

.field public static final RELATIVE_CHILD:I = 0x2

.field public static final RELATIVE_GRANDCHILD:I = 0x4

.field public static final RELATIVE_GRANDPARENT:I = 0x3

.field public static final RELATIVE_PARENT:I = 0x0

.field public static final RELATIVE_SIBLING:I = 0x1

.field public static final TYPE_EVENT:I = 0x1

.field public static final TYPE_GROUP:I = 0x0

.field public static final TYPE_PUBLIC:I = 0x2


# instance fields
.field public about:Ljava/lang/String;

.field public activities:Ljava/lang/String;

.field public activity:Ljava/lang/CharSequence;

.field public alcohol:I

.field public audioStatus:Lcom/vkontakte/android/AudioFile;

.field public bDay:I

.field public bMonth:I

.field public bYear:I

.field public bigPhoto:Ljava/lang/String;

.field public blacklisted:Z

.field public books:Ljava/lang/String;

.field public canCall:Z

.field public canPost:Z

.field public canSeeAllPosts:Z

.field public canWrite:Z

.field public city:Ljava/lang/String;

.field public counters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public country:Ljava/lang/String;

.field public eventEndTime:I

.field public eventStartTime:I

.field public facebookId:J

.field public facebookName:Ljava/lang/String;

.field public firstNameAcc:Ljava/lang/String;

.field public firstNameDat:Ljava/lang/String;

.field public firstNameGen:Ljava/lang/String;

.field public firstNameIns:Ljava/lang/String;

.field public friendStatus:I

.field public games:Ljava/lang/String;

.field public groupAccess:I

.field public groupType:I

.field public homePhone:Ljava/lang/String;

.field public hometown:Ljava/lang/String;

.field public infoLine:Ljava/lang/String;

.field public inspiredBy:Ljava/lang/String;

.field public interests:Ljava/lang/String;

.field public langs:Ljava/lang/String;

.field public lastNameAcc:Ljava/lang/String;

.field public lastNameDat:Ljava/lang/String;

.field public lastNameGen:Ljava/lang/String;

.field public lastNameIns:Ljava/lang/String;

.field public lastSeen:I

.field public lat:D

.field public lifeMain:I

.field public livejournal:Ljava/lang/String;

.field public lon:D

.field public mobilePhone:Ljava/lang/String;

.field public movies:Ljava/lang/String;

.field public music:Ljava/lang/String;

.field public peopleMain:I

.field public political:I

.field public profile:Lcom/vkontakte/android/UserProfile;

.field public quotations:Ljava/lang/String;

.field public relation:I

.field public relationPartner:I

.field public relationPartnerName:Ljava/lang/String;

.field public relatives:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;",
            ">;"
        }
    .end annotation
.end field

.field public religion:Ljava/lang/String;

.field public schools:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/api/ExtendedUserProfile$School;",
            ">;"
        }
    .end annotation
.end field

.field public screenName:Ljava/lang/String;

.field public showAllPosts:Z

.field public skype:Ljava/lang/String;

.field public smoking:I

.field public tv:Ljava/lang/String;

.field public twitter:Ljava/lang/String;

.field public universities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/api/ExtendedUserProfile$University;",
            ">;"
        }
    .end annotation
.end field

.field public verified:Z

.field public website:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
